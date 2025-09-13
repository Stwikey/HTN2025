"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.LockAxisController = void 0;
class LockAxisController {
    constructor(settings) {
        this.settings = settings;
    }
    get lockXAxis() {
        return this.settings.lockXAxis;
    }
    get lockYAxis() {
        return this.settings.lockYAxis;
    }
    get lockZAxis() {
        return this.settings.lockZAxis;
    }
    getAvailableHorizontalDirections() {
        const directions = [];
        if (!this.settings.lockXAxis) {
            directions.push(vec3.right(), vec3.left());
        }
        if (!this.settings.lockZAxis) {
            directions.push(vec3.forward(), vec3.back());
        }
        if (this.settings.lockXAxis && this.settings.lockZAxis && !this.settings.lockYAxis) {
            directions.push(vec3.up(), vec3.down());
        }
        return directions;
    }
    updateDirection(direction) {
        if (this.settings.lockXAxis) {
            direction.x = 0;
        }
        if (this.settings.lockYAxis) {
            direction.y = 0;
        }
        if (this.settings.lockZAxis) {
            direction.z = 0;
        }
        return direction;
    }
}
exports.LockAxisController = LockAxisController;
//# sourceMappingURL=LockAxisController.js.map