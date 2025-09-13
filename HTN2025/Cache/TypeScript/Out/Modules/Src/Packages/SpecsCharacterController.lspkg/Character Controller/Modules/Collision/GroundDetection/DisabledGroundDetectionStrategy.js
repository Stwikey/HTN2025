"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DisabledGroundDetectionStrategy = void 0;
/**
 * GroundDetectionLockYAxis mocks GroundDetection in case y axis is locked to disable
 * ground detection.
 */
class DisabledGroundDetectionStrategy {
    reset() {
        this.characterPosition = null;
    }
    initialize(pos, onReady) {
        onReady(null);
    }
    getGroundCollider() {
        return null;
    }
    getSteepGroundCollider() {
        return null;
    }
    getGroundNormal() {
        return vec3.up();
    }
    checkGroundExists() {
        return true;
    }
    setCharacterPosition(pos) {
        this.characterPosition = pos;
    }
    getNewWorldPositionOnGround() {
        return null;
    }
    isOnSteepGround() {
        return false;
    }
    getSteepGroundNormal() {
        return vec3.up();
    }
    updateDirectionOnGround(direction) {
        return direction.mult(new vec3(1, 0, 1));
    }
    findGround(settings, onReady) {
        onReady(null, null);
    }
    findGroundAndApply(settings, onReady) {
        onReady();
    }
    applyGround(groundInfo) {
    }
    getIsCharacterOnGround() {
        return true;
    }
    getGroundY() {
        return this.characterPosition ? this.characterPosition.y : null;
    }
    getMinCharacterY() {
        return this.characterPosition ? this.characterPosition.y : null;
    }
}
exports.DisabledGroundDetectionStrategy = DisabledGroundDetectionStrategy;
//# sourceMappingURL=DisabledGroundDetectionStrategy.js.map