"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.ShapeCastGroundDetection = void 0;
const AabbBuilder_1 = require("../CollisionHelpers/AabbBuilder");
const ProbeHelper_1 = require("../CollisionHelpers/ProbeHelper");
const GroundSurfaceValidator_1 = require("./GroundSurfaceValidator");
const ShapeCastGroundFinder_1 = require("./ShapeCastGroundFinder");
class ShapeCastGroundDetection {
    constructor(settings, characterCollider, lockAxisController, shapeForShapeCast, logger, callbackWrapper) {
        /**
         * Ground on which character stands and which is valid
         */
        this.groundInfo = null;
        /**
         * Ground on which character stands and which is too step
         */
        this.steepGroundInfo = null;
        /**
         * Y of next ground below character in case character does not stand on ground
         */
        this.nextGroundY = null;
        this.wasInitialized = false;
        this.lockAxisController = lockAxisController;
        this.logger = logger;
        this.characterCollider = characterCollider;
        this.rayCastController = new ProbeHelper_1.RayCastController(shapeForShapeCast, callbackWrapper, (0, ProbeHelper_1.createProbe)({ dynamic: true, static: true, skip: [this.characterCollider] }));
        this.currentGroundRayCastController = new ProbeHelper_1.RayCastController(shapeForShapeCast, callbackWrapper, (0, ProbeHelper_1.createProbe)({ dynamic: true, static: true, skip: [this.characterCollider] }));
        const aabb = AabbBuilder_1.AabbBuilder.buildAabb(characterCollider.getSceneObject()
            .getTransform()
            .getWorldPosition(), characterCollider);
        this.shapeSize = aabb.aabbMax.sub(aabb.aabbMin);
        this.groundSurfaceValidator = new GroundSurfaceValidator_1.GroundSurfaceValidator(settings, this.currentGroundRayCastController, this.shapeSize);
        this.groundFinder = new ShapeCastGroundFinder_1.ShapeCastGroundFinder(settings, this.characterCollider, this.rayCastController, this.groundSurfaceValidator);
    }
    reset() {
        this.groundInfo = null;
        this.steepGroundInfo = null;
        this.nextGroundY = null;
        this.wasInitialized = false;
    }
    /**
     * Find initial ground in position
     */
    initialize(position, onReady) {
        if (this.wasInitialized) {
            onReady(null);
        }
        else {
            this.findGroundAndApply({
                findSteepGround: true,
                initialPosition: position,
                nextPosition: position,
                skipStepHeight: true,
            }, () => {
                this.wasInitialized = true;
                if (this.groundInfo !== null) {
                    position.y = this.groundInfo.groundY;
                    this.setCharacterPosition(position);
                    onReady(position);
                }
                else {
                    onReady(null);
                }
            });
        }
    }
    getGroundCollider() {
        return this.groundInfo && this.groundInfo.ground;
    }
    getSteepGroundCollider() {
        return this.steepGroundInfo && this.steepGroundInfo.ground;
    }
    getGroundNormal() {
        return this.groundInfo && this.groundInfo.groundSurfaceNormal;
    }
    checkGroundExists() {
        return !isNull(this.groundInfo) && (this.groundInfo.isZeroGround
            || this.groundSurfaceValidator.isExistingGround(this.groundInfo.ground));
    }
    /**
     * Sets current character position on ground in case ground moves
     */
    setCharacterPosition(pos) {
        if (this.groundInfo && !this.groundInfo.isZeroGround) {
            const transform = this.groundInfo.ground.getSceneObject()
                .getTransform();
            const invertedWorldTransform = transform.getInvertedWorldTransform();
            const height = this.shapeSize.y;
            const bottomPos = new vec3(pos.x, pos.y - height / 2, pos.z);
            this.groundInfo.localPositionOnGround = invertedWorldTransform.multiplyPoint(bottomPos);
        }
        else {
            if (this.groundInfo) {
                this.groundInfo.localPositionOnGround = null;
            }
        }
    }
    /**
     * Updates character position in case ground moves
     */
    getNewWorldPositionOnGround(pos) {
        if (this.groundInfo && this.groundInfo.localPositionOnGround && this.groundInfo.ground && !this.groundInfo.isZeroGround) {
            const transform = this.groundInfo.ground.getSceneObject()
                .getTransform();
            const worldTransform = transform.getWorldTransform();
            const worldBottomPos = worldTransform.multiplyPoint(this.groundInfo.localPositionOnGround);
            const height = this.shapeSize.y;
            worldBottomPos.y += height / 2;
            if (this.lockAxisController.lockXAxis) {
                worldBottomPos.x = pos.x;
            }
            if (this.lockAxisController.lockYAxis) {
                worldBottomPos.y = pos.y;
            }
            if (this.lockAxisController.lockZAxis) {
                worldBottomPos.z = pos.z;
            }
            return worldBottomPos;
        }
        else {
            return null;
        }
    }
    isOnSteepGround() {
        return !!this.steepGroundInfo;
    }
    getSteepGroundNormal() {
        return this.steepGroundInfo && this.steepGroundInfo.groundSurfaceNormal;
    }
    updateDirectionOnGround(direction) {
        if (direction && this.groundInfo && this.groundInfo.groundSurfaceNormal) {
            return direction.projectOnPlane(this.groundInfo.groundSurfaceNormal);
        }
        else {
            return direction;
        }
    }
    findGround(settings, onReady) {
        this.groundFinder.findGround(this.groundInfo, settings, onReady);
    }
    findGroundAndApply(settings, onReady) {
        this.groundFinder.findGround(this.groundInfo, settings, (groundInfo, nextGroundY) => {
            if (groundInfo) {
                this.setGroundInfo(groundInfo);
            }
            else {
                this.setGroundInfo(null);
                this.nextGroundY = nextGroundY;
            }
            onReady();
        });
    }
    applyGround(groundInfo) {
        this.setGroundInfo(groundInfo);
    }
    getIsCharacterOnGround() {
        return this.groundInfo && this.groundInfo.isCharacterOnGround;
    }
    getGroundY() {
        return this.groundInfo && this.groundInfo.groundY;
    }
    getMinCharacterY() {
        return this.nextGroundY;
    }
    setGroundInfo(groundInfo) {
        if (!groundInfo) {
            this.logger.logGroundInfo(() => "NO GROUND");
        }
        else {
            if (!groundInfo.isSteepGround) {
                if (groundInfo.isZeroGround) {
                    this.logger.logGroundInfo(() => "ZERO GROUND");
                }
                else {
                    this.logger.logGroundInfo(() => "GROUND : " + groundInfo.ground.getSceneObject().name);
                }
            }
            else {
                this.logger.logGroundInfo(() => "STEEP GROUND : " + groundInfo.ground.getSceneObject().name);
            }
        }
        const previousGround = this.groundInfo && this.groundInfo.ground;
        if (previousGround && previousGround.filter) {
            previousGround.filter.skipColliders = previousGround.filter.skipColliders.filter((obj) => obj !== this.characterCollider);
            this.characterCollider.filter.skipColliders = this.characterCollider.filter.skipColliders.filter((obj) => obj !== previousGround);
        }
        const previousSteepGround = this.steepGroundInfo && this.steepGroundInfo.ground;
        if (previousSteepGround && previousSteepGround.filter) {
            previousSteepGround.filter.skipColliders = previousSteepGround.filter.skipColliders.filter((obj) => obj !== this.characterCollider);
            this.characterCollider.filter.skipColliders = this.characterCollider.filter.skipColliders.filter((obj) => obj !== previousSteepGround);
        }
        this.steepGroundInfo = null;
        this.groundInfo = null;
        this.nextGroundY = null;
        if (groundInfo) {
            if (groundInfo.isSteepGround) {
                this.steepGroundInfo = groundInfo;
            }
            else {
                this.groundInfo = groundInfo;
            }
            if (groundInfo.ground) {
                this.characterCollider.filter.skipColliders = [...this.characterCollider.filter.skipColliders, groundInfo.ground];
                groundInfo.ground.filter = groundInfo.ground.filter || Physics.Filter.create();
                groundInfo.ground.filter.skipColliders = [...groundInfo.ground.filter.skipColliders, this.characterCollider];
            }
        }
    }
}
exports.ShapeCastGroundDetection = ShapeCastGroundDetection;
//# sourceMappingURL=ShapeCastGroundDetection.js.map