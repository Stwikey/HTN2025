"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.OverlapRecovery = void 0;
const AabbBuilder_1 = require("../CollisionHelpers/AabbBuilder");
const AabbOverlap_1 = require("../CollisionHelpers/AabbOverlap");
const ProbeHelper_1 = require("../CollisionHelpers/ProbeHelper");
const OverlapFixer_1 = require("./OverlapFixer");
const Utils_1 = require("../../Utils/Utils");
class OverlapRecovery {
    constructor(characterCollider, groundDetection, fixOverlapCollider, lockAxisController, shapeForShapeCast, logger, callbackWrapper) {
        this.characterCollider = characterCollider;
        this.groundDetection = groundDetection;
        this.fixOverlapCollider = fixOverlapCollider;
        this.lockAxisController = lockAxisController;
        this.shapeForShapeCast = shapeForShapeCast;
        this.logger = logger;
        this.maxNumSteps = 15;
        this.colliders = [];
        this.rayCastController = new ProbeHelper_1.RayCastController(this.shapeForShapeCast, callbackWrapper, (0, ProbeHelper_1.createProbe)({ static: true, skip: [this.characterCollider] }));
        this.overlapFixer = new OverlapFixer_1.OverlapFixer(this.rayCastController, this.groundDetection, this.lockAxisController);
        this.initializeOverlapEvents();
    }
    fixOverlaps(pos, onReady) {
        this.rayCastController.probe.filter.onlyColliders = [];
        const allColliders = this.getAllCollidersInScene();
        const cache = {
            initialPosition: pos,
            allPositions: [pos],
            colliders: allColliders,
            aabb: this.getAabb(allColliders),
            currentPosition: pos,
        };
        this.logger.logOverlapInfo(() => "INITIAL POSITION\n" + cache.initialPosition);
        this.nextFixOverlapStep(cache, onReady);
    }
    nextFixOverlapStep(cache, onComplete, currentIteration = 0) {
        const characterAabb = AabbBuilder_1.AabbBuilder.buildAabb(cache.currentPosition, this.characterCollider, 0.1);
        let overlappedAabb = this.filterOnlyOverlappedAabb(characterAabb, cache.aabb);
        const initialPosition = Utils_1.Utils.copyVec3(cache.currentPosition);
        if (currentIteration >= this.maxNumSteps) {
            this.tryToOverlapInDefaultDirectionsIfThereIsStillOverlap(cache, characterAabb, onComplete);
            return;
        }
        overlappedAabb = overlappedAabb.sort((a, b) => a.collider.getSceneObject()
            .name
            .localeCompare(b.collider.getSceneObject().name));
        this.logger.logOverlapInfo(() => "OVERLAPPED COLLIDERS : " + overlappedAabb.map((aabb) => aabb.collider.getSceneObject().name));
        this.rayCastController.probe.filter.onlyColliders = overlappedAabb.map((aabb) => aabb.collider);
        if (overlappedAabb.length === 0) {
            onComplete(cache.currentPosition);
            return;
        }
        this.overlapFixer.fixOverlapWithAabbRecursively(initialPosition, cache.currentPosition, characterAabb, overlappedAabb, cache.allPositions, (position) => {
            this.logger.logOverlapInfo(() => "NEW POSITION : " + position);
            const MAX_DISTANCE_DIFF = 1e-3;
            if (cache.allPositions[cache.allPositions.length - 1].distance(position) < MAX_DISTANCE_DIFF) {
                // position is same as previous - no changes
                onComplete(position);
                return;
            }
            if (cache.allPositions.some((pos) => pos.distance(position) < MAX_DISTANCE_DIFF)) {
                // position repeats - loop detected
                this.tryToOverlapInDefaultDirectionsIfThereIsStillOverlap(cache, characterAabb, onComplete);
                return;
            }
            cache.allPositions.push(position);
            cache.currentPosition = position;
            this.nextFixOverlapStep(cache, onComplete, currentIteration + 1);
        });
    }
    tryToOverlapInDefaultDirectionsIfThereIsStillOverlap(cache, characterAabb, onComplete) {
        const newCharAabb = characterAabb.setPosition(cache.currentPosition);
        const overlappedAabb = this.filterOnlyOverlappedAabb(newCharAabb, cache.aabb);
        if (overlappedAabb.length === 0) {
            onComplete(cache.currentPosition);
        }
        else {
            this.logger.logOverlapInfo(() => "FIX OVERLAP IN DEFAULT DIRECTIONS");
            this.overlapFixer.fixOverlapInDefaultDirections(cache.initialPosition, cache.currentPosition, newCharAabb, cache.aabb, onComplete);
        }
    }
    filterOnlyOverlappedAabb(characterAabb, aabb) {
        return aabb.filter((aabb) => AabbOverlap_1.AabbOverlap.isAabbOverlap(aabb, characterAabb));
    }
    getAabb(colliders) {
        return colliders.map((collider) => AabbBuilder_1.AabbBuilder.buildAabb(null, collider))
            .filter((val) => !!val);
    }
    getAllCollidersInScene() {
        return this.colliders.filter((collider) => {
            if (collider.getTypeName() === "BodyComponent") {
                return this.isPhysicBodyValid(collider);
            }
            else {
                return this.isColliderValid(collider);
            }
        });
    }
    isPhysicBodyValid(body) {
        return body.enabled && body !== this.characterCollider
            && body !== this.groundDetection.getGroundCollider()
            && body !== this.groundDetection.getSteepGroundCollider()
            && !body.intangible && !body.dynamic;
    }
    isColliderValid(collider) {
        return collider.enabled && collider !== this.characterCollider
            && collider !== this.groundDetection.getGroundCollider()
            && collider !== this.groundDetection.getSteepGroundCollider()
            && !collider.intangible
            && collider.getTypeName() !== "Physics.BodyComponent";
    }
    initializeOverlapEvents() {
        this.fixOverlapCollider.onOverlapEnter.add((overlap) => {
            if (this.colliders.indexOf(overlap.overlap.collider) < 0) {
                this.colliders.push(overlap.overlap.collider);
            }
        });
        this.fixOverlapCollider.onCollisionEnter.add((collision) => {
            if (this.colliders.indexOf(collision.collision.collider) < 0) {
                this.colliders.push(collision.collision.collider);
            }
        });
        this.fixOverlapCollider.onOverlapExit.add((overlap) => {
            const index = this.colliders.indexOf(overlap.overlap.collider);
            if (index >= 0) {
                this.colliders.splice(index, 1);
            }
        });
        this.fixOverlapCollider.onCollisionExit.add((collision) => {
            const index = this.colliders.indexOf(collision.collision.collider);
            if (index >= 0) {
                this.colliders.splice(index, 1);
            }
        });
    }
}
exports.OverlapRecovery = OverlapRecovery;
//# sourceMappingURL=OverlapRecovery.js.map