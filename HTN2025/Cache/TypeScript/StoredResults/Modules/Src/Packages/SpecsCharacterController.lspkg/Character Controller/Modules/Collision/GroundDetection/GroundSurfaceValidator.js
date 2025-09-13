"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.GroundSurfaceValidator = void 0;
const AabbBuilder_1 = require("../CollisionHelpers/AabbBuilder");
const AabbOverlap_1 = require("../CollisionHelpers/AabbOverlap");
const SurfaceNormalHelper_1 = require("../CollisionHelpers/SurfaceNormalHelper");
const Utils_1 = require("../../Utils/Utils");
const ProbeHelper_1 = require("../CollisionHelpers/ProbeHelper");
class GroundSurfaceValidator {
    constructor(settings, currentGroundRayCastController, shapeSize) {
        this.settings = settings;
        this.currentGroundRayCastController = currentGroundRayCastController;
        this.shapeSize = shapeSize;
    }
    isExistingGround(ground) {
        const wasNotDestroyedOrDisabled = !isNull(ground)
            && ground.enabled && ground.getSceneObject().enabled
            && ground.getSceneObject().isEnabledInHierarchy;
        if (wasNotDestroyedOrDisabled) {
            const transform = ground.getTransform();
            const scale = transform.getWorldScale();
            if (Math.abs(scale.x) <= Utils_1.Utils.EPS
                || Math.abs(scale.y) <= Utils_1.Utils.EPS
                || Math.abs(scale.z) <= Utils_1.Utils.EPS) {
                return false;
            }
            else {
                return true;
            }
        }
        else {
            return false;
        }
    }
    isValidGroundSurface(groundInfo, findSteepGround, initPos, hit, characterAabb, start, end, charPos, checkIsBelow, skipStepHeight, onReady) {
        if (!this.isExistingGround(hit.collider)) {
            onReady(false, null);
            return;
        }
        const intersection = (0, ProbeHelper_1.getRayCastCollisionCharacterPosition)(start, end, hit);
        this.isAngleCorrect(findSteepGround, hit, intersection, (surfaceData) => {
            const isAngleCorrect = !!surfaceData;
            if (!isAngleCorrect) {
                onReady(false, null);
                return;
            }
            const groundY = surfaceData ? surfaceData.actualPos.y
                : intersection.y;
            const OFFSET = 1;
            const isBelow = Math.abs(groundY - charPos.y) < OFFSET || groundY <= charPos.y;
            const isStepHeightCorrect = skipStepHeight || (groundY <= initPos.y
                || (groundInfo !== null && groundInfo.isCharacterOnGround
                    && Math.abs(groundY - initPos.y) < this.settings.stepHeight));
            const isOverlap = () => {
                const aabb = AabbBuilder_1.AabbBuilder.buildAabb(null, hit.collider);
                return AabbOverlap_1.AabbOverlap.isAabbOverlap(aabb, characterAabb);
            };
            const isValid = ((checkIsBelow && isBelow) || (isStepHeightCorrect || hit.collider === (groundInfo === null || groundInfo === void 0 ? void 0 : groundInfo.ground)))
                && isOverlap();
            if (!isValid) {
                onReady(false, null);
                return;
            }
            const MAX_GROUND_OFFSET = 2;
            const isOnGround = charPos.y <= groundY || Math.abs(charPos.y - groundY) < MAX_GROUND_OFFSET;
            if (isOnGround) {
                if (groundInfo && groundInfo.ground === hit.collider) {
                    onReady(true, surfaceData);
                }
                else {
                    this.checkIfIsOutsideObject(charPos, groundY, hit.collider, (isOutside) => {
                        const isValid = !isOutside;
                        onReady(isValid, isValid ? surfaceData : null);
                    });
                }
            }
            else {
                onReady(false, null);
            }
        });
    }
    checkIfIsOutsideObject(charPos, newY, collider, onReady) {
        this.currentGroundRayCastController.probe.filter.onlyColliders = [collider];
        const end = new vec3(charPos.x, newY, charPos.z);
        this.currentGroundRayCastController.shapeCast(charPos, end, (hit) => {
            if (hit) {
                onReady(hit.t > Utils_1.Utils.EPS);
            }
            else {
                onReady(false);
            }
        });
    }
    isAngleCorrect(findSteepGround, hit, pos, onReady) {
        SurfaceNormalHelper_1.SurfaceNormalHelper.getSurfaceData(this.currentGroundRayCastController, hit.collider, hit.position, this.settings.groundCheckDistance, (surfaceData) => {
            if (surfaceData) {
                const angleSurface = surfaceData.normal.angleTo(vec3.up());
                surfaceData.actualPos.y += this.shapeSize.y / 2;
                const isSteep = angleSurface >= Utils_1.Utils.degreesToRadians(this.settings.maxGroundAngle);
                const data = { normal: surfaceData.normal, actualPos: surfaceData.actualPos, isSteep };
                if (findSteepGround) {
                    onReady(data);
                }
                else {
                    const result = !isSteep ? data : null;
                    onReady(result);
                }
            }
            else {
                const angleNormal = hit.normal.angleTo(vec3.up());
                const isSteep = angleNormal >= Utils_1.Utils.degreesToRadians(this.settings.maxGroundAngle);
                const data = { normal: hit.normal, actualPos: pos, isSteep };
                if (findSteepGround) {
                    onReady(data);
                }
                else {
                    const result = !isSteep ? data : null;
                    onReady(result);
                }
            }
        });
    }
}
exports.GroundSurfaceValidator = GroundSurfaceValidator;
//# sourceMappingURL=GroundSurfaceValidator.js.map