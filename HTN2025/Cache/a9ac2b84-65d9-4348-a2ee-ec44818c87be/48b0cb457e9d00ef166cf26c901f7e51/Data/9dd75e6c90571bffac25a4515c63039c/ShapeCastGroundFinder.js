"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.ShapeCastGroundFinder = void 0;
const AabbBuilder_1 = require("../CollisionHelpers/AabbBuilder");
const ProbeHelper_1 = require("../CollisionHelpers/ProbeHelper");
const Utils_1 = require("../../Utils/Utils");
const ZERO_GROUND_Y = 0;
class ShapeCastGroundFinder {
    constructor(settings, characterCollider, rayCastController, groundSurfaceValidator) {
        this.settings = settings;
        this.characterCollider = characterCollider;
        this.rayCastController = rayCastController;
        this.groundSurfaceValidator = groundSurfaceValidator;
        this.zeroGroundYForShape = ZERO_GROUND_Y + this.settings.colliderHeight / 2 + this.settings.colliderRadius;
    }
    findGround(currentGroundInfo, settings, onReady) {
        const searchForNextGroundY = settings.searchForNextGroundY;
        this.rayCastController.probe.filter.onlyColliders = settings.onlyColliders || [];
        const cache = {};
        cache.initialGround = currentGroundInfo;
        cache.characterPosition = Utils_1.Utils.copyVec3(settings.nextPosition);
        cache.isOnZeroGround = this.isOnZeroGround(settings.nextPosition);
        cache.characterAabb = AabbBuilder_1.AabbBuilder.buildAabb(settings.nextPosition, this.characterCollider);
        const OFFSET = 1;
        cache.characterAabb.aabbMin.y -= OFFSET;
        this.rayCastAllColliders(cache, settings, (hits) => {
            cache.hits = hits;
            settings.searchForNextGroundY = false;
            this.checkGroundHitsRecursively(cache, settings, (groundInfo) => {
                if (groundInfo) {
                    onReady(groundInfo, null);
                }
                else {
                    if (cache.isOnZeroGround) {
                        onReady(this.createZeroGroundInfo(), null);
                    }
                    else {
                        settings.searchForNextGroundY = searchForNextGroundY;
                        this.tryToFindNextGroundY(cache, settings, (y) => onReady(null, y));
                    }
                }
            });
        });
    }
    tryToFindNextGroundY(cache, settings, onReady) {
        if (!settings.searchForNextGroundY) {
            onReady(null);
            return;
        }
        this.checkGroundHitsRecursively(cache, settings, (_, nextGroundY) => {
            if (this.settings.groundIsZero && (isNull(nextGroundY) || nextGroundY < this.zeroGroundYForShape)) {
                onReady(this.zeroGroundYForShape);
            }
            else {
                onReady(nextGroundY);
            }
        });
    }
    rayCastAllColliders(cache, settings, onReady) {
        cache.rayStart = Utils_1.Utils.copyVec3(settings.nextPosition);
        cache.rayEnd = cache.rayStart.add(vec3.down()
            .uniformScale(this.settings.groundCheckDistance));
        cache.rayStart.y += Math.abs(this.settings.groundCheckDistance);
        this.rayCastController.shapeCastAll(cache.rayStart, cache.rayEnd, onReady);
    }
    checkGroundHitsRecursively(cache, settings, onReady, hitIndex = 0) {
        if (hitIndex >= cache.hits.length) {
            onReady(null, null);
            return;
        }
        this.checkGroundHit(settings, cache, cache.hits[hitIndex], (groundInfo, nextGroundY) => {
            if (groundInfo) {
                onReady(groundInfo, nextGroundY);
            }
            else {
                this.checkGroundHitsRecursively(cache, settings, onReady, hitIndex + 1);
            }
        });
    }
    checkGroundHit(settings, cache, hit, onComplete) {
        const groundY = cache.rayStart.y + (cache.rayEnd.y - cache.rayStart.y) * hit.t;
        if (groundY < this.zeroGroundYForShape && cache.isOnZeroGround) {
            onComplete(this.createZeroGroundInfo(), null);
            return;
        }
        this.groundSurfaceValidator.isValidGroundSurface(cache.initialGround, settings.findSteepGround, settings.initialPosition, hit, cache.characterAabb, cache.rayStart, cache.rayEnd, cache.characterPosition, settings.searchForNextGroundY, settings.skipStepHeight, (wasFound, angleCheckData) => {
            if (wasFound) {
                if (settings.searchForNextGroundY) {
                    const nextGroundY = angleCheckData ? angleCheckData.actualPos.y : (0, ProbeHelper_1.getRayCastCollisionCharacterPosition)(cache.rayStart, cache.rayEnd, hit).y;
                    onComplete(null, nextGroundY);
                }
                else {
                    const groundFound = !angleCheckData.isSteep
                        || (settings.findSteepGround && !Utils_1.Utils.isColliderDynamic(hit.collider));
                    if (groundFound) {
                        const groundInfo = {
                            ground: hit.collider,
                            groundY,
                            isCharacterOnGround: true,
                            localPositionOnGround: null,
                            groundSurfaceNormal: angleCheckData.normal,
                            isZeroGround: false,
                            isSteepGround: angleCheckData.isSteep,
                        };
                        onComplete(groundInfo, null);
                    }
                    else {
                        onComplete(null, null);
                    }
                }
            }
            else {
                onComplete(null, null);
            }
        });
    }
    isOnZeroGround(start) {
        const OFFSET = 1;
        return this.settings.groundIsZero && start.y <= this.zeroGroundYForShape + OFFSET;
    }
    createZeroGroundInfo() {
        return {
            ground: null,
            groundY: this.zeroGroundYForShape,
            isCharacterOnGround: true,
            localPositionOnGround: null,
            groundSurfaceNormal: vec3.up(),
            isZeroGround: true,
            isSteepGround: false,
        };
    }
}
exports.ShapeCastGroundFinder = ShapeCastGroundFinder;
//# sourceMappingURL=ShapeCastGroundFinder.js.map