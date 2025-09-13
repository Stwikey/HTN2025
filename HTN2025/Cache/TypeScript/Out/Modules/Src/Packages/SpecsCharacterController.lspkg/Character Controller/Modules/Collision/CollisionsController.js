"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.CollisionsController = void 0;
const OverlapRecovery_1 = require("./OverlapRecovery/OverlapRecovery");
const GroundDetection_1 = require("./GroundDetection/GroundDetection");
const ProbeHelper_1 = require("./CollisionHelpers/ProbeHelper");
const Utils_1 = require("../Utils/Utils");
const FIX_OVERLAP_BOX_SIZE_SCALE = 4;
const DEFAULT_ROTATION = quat.angleAxis(0, vec3.up());
/**
 * Class handles collisions of character so that it does not overlap with static colliders.
 */
class CollisionsController {
    constructor(settings, rootSO, lockAxisController, logger, callbackWrapper) {
        this.lockAxisController = lockAxisController;
        this.logger = logger;
        this.shapeForShapeCast = Shape.createCapsuleShape();
        this.characterCollider = this.createCollider(settings, rootSO);
        this.groundDetection = new GroundDetection_1.GroundDetection(settings, this.characterCollider, logger, lockAxisController, this.shapeForShapeCast, callbackWrapper);
        this.overlapRecovery = new OverlapRecovery_1.OverlapRecovery(this.characterCollider, this.groundDetection, this.createFixOverlapsCollider(settings, rootSO), this.lockAxisController, this.shapeForShapeCast, logger, callbackWrapper);
        this.rayCastController = new ProbeHelper_1.RayCastController(this.shapeForShapeCast, callbackWrapper, (0, ProbeHelper_1.createProbe)({ static: true, skip: [this.characterCollider] }));
        this.updateShapeSizeAccordingToScale();
    }
    updateShapeSizeAccordingToScale() {
        this.characterCollider.getSceneObject()
            .getTransform()
            .setWorldRotation(DEFAULT_ROTATION);
        const scale = this.characterCollider.getSceneObject()
            .getTransform()
            .getWorldScale();
        const originalCapsuleShape = this.characterCollider.shape;
        this.shapeForShapeCast.axis = originalCapsuleShape.axis;
        this.shapeForShapeCast.length = originalCapsuleShape.length * scale.x;
        this.shapeForShapeCast.radius = originalCapsuleShape.radius * scale.x;
    }
    /**
     * Set whether collider should be visible.
     * @param enabled
     */
    setDebugDrawEnabled(enabled) {
        this.characterCollider.debugDrawEnabled = !!enabled;
    }
    handleStaticCollidersConstraint(skipColliders, previousPosition, nextPosition, onReady) {
        skipColliders = [this.characterCollider, ...skipColliders].filter((obj) => !!obj);
        this.rayCastController.probe.filter.includeDynamic = false;
        this.rayCastController.probe.filter.skipColliders = skipColliders;
        this.rayCastController.shapeCastAll(previousPosition, nextPosition, (hits) => {
            this.handleStaticCollidersConstraintRecursively(previousPosition, nextPosition, hits, onReady);
        });
    }
    handleCollidersConstraintWhileFalling(skipColliders, previousPosition, nextPosition, onReady) {
        skipColliders = [this.characterCollider, ...skipColliders].filter((obj) => !!obj);
        this.rayCastController.probe.filter.includeDynamic = true;
        this.rayCastController.probe.filter.skipColliders = skipColliders;
        this.rayCastController.shapeCastAll(previousPosition, nextPosition, (hits) => {
            this.handleCollidersConstraintWhileFallingRecursively(previousPosition, nextPosition, hits, onReady);
        });
    }
    handleStaticCollidersConstraintRecursively(previousPosition, nextPosition, hits, onReady, hitIndex = 0) {
        if (hitIndex >= hits.length) {
            onReady(nextPosition);
            return;
        }
        const hit = hits[hitIndex];
        this.handleColliderConstraint(false, previousPosition, nextPosition, hit, (position, shouldStop) => {
            if (shouldStop) {
                onReady(position);
            }
            else {
                this.handleStaticCollidersConstraintRecursively(previousPosition, nextPosition, hits, onReady, hitIndex + 1);
            }
        });
    }
    handleCollidersConstraintWhileFallingRecursively(previousPosition, nextPosition, hits, onReady, hitIndex = 0) {
        if (hitIndex >= hits.length) {
            onReady(nextPosition);
            return;
        }
        const hit = hits[hitIndex];
        this.logger.logColliderConstraints(() => "HIT WHILE FALLING : " + hit.collider.getSceneObject().name + "\n");
        this.handleColliderConstraint(true, previousPosition, nextPosition, hit, (position, shouldStop) => {
            if (shouldStop) {
                onReady(position);
            }
            else {
                this.handleCollidersConstraintWhileFallingRecursively(previousPosition, nextPosition, hits, onReady, hitIndex + 1);
            }
        });
    }
    handleColliderConstraint(shouldHandleDynamic, previousPosition, nextPosition, hit, onReady) {
        this.logger.logColliderConstraints(() => "HIT WHILE FALLING : " + hit.collider.getSceneObject().name + "\n");
        const isDynamic = Utils_1.Utils.isColliderDynamic(hit.collider);
        if (isDynamic) {
            if (shouldHandleDynamic) {
                // Stop only if it is ground, otherwise dynamic collider will be pushed if overlapped with character
                this.groundDetection.findGround({
                    initialPosition: previousPosition,
                    nextPosition: nextPosition,
                    skipStepHeight: false,
                    findSteepGround: true,
                    onlyColliders: [hit.collider],
                    searchForNextGroundY: false,
                }, (groundInfo) => {
                    if (groundInfo && groundInfo.ground === hit.collider) {
                        this.logger.logColliderConstraints(() => "HIT GROUND : " + hit.collider.getSceneObject().name + "\n");
                        this.groundDetection.applyGround(groundInfo);
                        onReady((0, ProbeHelper_1.getRayCastCollisionCharacterPosition)(previousPosition, nextPosition, hit), true);
                    }
                    else {
                        onReady(nextPosition, false);
                    }
                });
            }
            else {
                onReady(nextPosition, false);
            }
        }
        else {
            // Stop if collided with static collider
            this.groundDetection.findGround({
                initialPosition: previousPosition,
                nextPosition: nextPosition,
                skipStepHeight: false,
                findSteepGround: false,
                onlyColliders: [hit.collider],
                searchForNextGroundY: false,
            }, (groundInfo) => {
                if (groundInfo) {
                    this.logger.logColliderConstraints(() => "HIT GROUND : " + hit.collider.getSceneObject().name + "\n");
                    this.groundDetection.applyGround(groundInfo);
                    nextPosition.y = this.groundDetection.getGroundY();
                    // collided with ground, check other colliders
                    onReady(nextPosition, false);
                }
                else {
                    this.logger.logColliderConstraints(() => "HIT STATIC COLLIDER : " + hit.collider.getSceneObject().name + "\n");
                    const direction = nextPosition.sub(previousPosition);
                    const isOnGround = this.groundDetection.getIsCharacterOnGround();
                    let normal = new vec3(hit.normal.x, isOnGround ? 0 : hit.normal.y, hit.normal.z);
                    if (normal.length > Utils_1.Utils.EPS && normal.angleTo(direction) > Math.PI / 2) {
                        normal = normal.normalize();
                        let projectedDirection = direction.projectOnPlane(normal);
                        if (this.groundDetection.getIsCharacterOnGround()) {
                            projectedDirection = projectedDirection.projectOnPlane(this.groundDetection.getGroundNormal());
                        }
                        if (isOnGround) {
                            projectedDirection.y = 0;
                        }
                        projectedDirection = this.lockAxisController.updateDirection(projectedDirection);
                        const MIN_DIRECTION_LENGTH = 1e-4;
                        if (projectedDirection.length > MIN_DIRECTION_LENGTH) {
                            projectedDirection = projectedDirection.normalize()
                                .uniformScale(direction.length);
                            const newNextPosition = previousPosition.add(projectedDirection);
                            this.rayCastController.shapeCast(previousPosition, newNextPosition, (hit) => {
                                if (hit) {
                                    const position = projectedDirection.uniformScale(hit.t)
                                        .add(previousPosition);
                                    onReady(position, true);
                                }
                                else {
                                    onReady(newNextPosition, false);
                                }
                            });
                        }
                        else {
                            onReady(previousPosition, true);
                        }
                    }
                    else {
                        onReady(nextPosition, false);
                    }
                }
            });
        }
    }
    /**
     * Creates capsule collider for character.
     */
    createCollider(settings, parentSO) {
        const root = global.scene.createSceneObject("Character Controller Collider");
        root.setParent(parentSO);
        const transform = root.getTransform();
        transform.setLocalPosition(settings.colliderCenter);
        transform.setLocalScale(vec3.one());
        transform.setLocalRotation(DEFAULT_ROTATION);
        const colliderComponent = root.createComponent("ColliderComponent");
        const capsule = Shape.createCapsuleShape();
        capsule.length = settings.colliderHeight;
        capsule.radius = settings.colliderRadius;
        capsule.axis = Axis.Y;
        colliderComponent.shape = capsule;
        colliderComponent.fitVisual = false;
        colliderComponent.debugDrawEnabled = settings.showCollider;
        colliderComponent.filter = Physics.Filter.create();
        return colliderComponent;
    }
    /**
     * Creates bigger box collider for overlap events to collect all colliders around character
     * to fix overlaps with them.
     */
    createFixOverlapsCollider(settings, parentSO) {
        const root = global.scene.createSceneObject("Character Controller Collider To Fix Overlaps");
        root.setParent(parentSO);
        const transform = root.getTransform();
        transform.setLocalPosition(vec3.zero());
        transform.setLocalScale(vec3.one());
        transform.setLocalRotation(DEFAULT_ROTATION);
        const colliderComponent = root.createComponent("ColliderComponent");
        const box = Shape.createBoxShape();
        const size = settings.colliderHeight + settings.colliderRadius * 2;
        box.size = vec3.one()
            .uniformScale(size * FIX_OVERLAP_BOX_SIZE_SCALE);
        colliderComponent.shape = box;
        colliderComponent.fitVisual = false;
        colliderComponent.intangible = true;
        colliderComponent.debugDrawEnabled = false;
        return colliderComponent;
    }
}
exports.CollisionsController = CollisionsController;
//# sourceMappingURL=CollisionsController.js.map