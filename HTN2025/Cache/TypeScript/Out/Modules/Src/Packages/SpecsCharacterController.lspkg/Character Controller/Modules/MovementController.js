"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.MovementController = void 0;
const Utils_1 = require("./Utils/Utils");
/**
 * Class controls speed, position and rotation of character.
 */
class MovementController {
    constructor(setting, lockAxisController, rootSO, collider, colliderOffset) {
        this.targetSpeedModifier = 1;
        this.currentSpeed = 0;
        this.direction = null;
        this.previousPosition = null;
        this.previousDirection = vec3.zero();
        this.speedY = 0;
        this.settings = setting;
        this.lockAxisController = lockAxisController;
        this.colliderOffset = colliderOffset;
        this.colliderT = collider.getSceneObject()
            .getTransform();
        this.rootT = rootSO.getTransform();
        this.currentPosition = this.colliderT.getWorldPosition();
    }
    setInitialScale(scale) {
        this.initialScale = scale;
    }
    get currentPosition() {
        return this._currentPosition;
    }
    set currentPosition(pos) {
        this._currentPosition = pos;
    }
    reset() {
        this.speedY = 0;
        this.currentPosition = this.colliderT.getWorldPosition();
        this.targetSpeedModifier = 1;
        this.currentSpeed = 0;
        this.direction = null;
        this.previousPosition = null;
        this.previousDirection = null;
    }
    isMoving() {
        return this.getVelocity().length > Utils_1.Utils.EPS;
    }
    getVelocity() {
        const horizontalDirection = (this.direction || this.previousDirection || vec3.zero()).uniformScale(this.currentSpeed);
        horizontalDirection.y = this.speedY;
        return horizontalDirection;
    }
    /**
     * Set direction in which character will move on next update.
     * Call move on each update, otherwise character will stop.
     * @param direction - direction vector, will be normalised, y is skipped
     */
    move(direction) {
        this.direction = direction;
        if (this.isDirectionValid()) {
            this.previousDirection = null;
        }
        this.lockAxisIfNeeded();
        if (this.isDirectionValid()) {
            this.direction = direction.normalize();
        }
    }
    getNextDirection() {
        return this.direction || this.previousDirection;
    }
    /**
     * @param targetSpeedModifier - speed modifier, default is 1, represents how string should we align to targetSpeed
     */
    setTargetSpeedModifier(targetSpeedModifier) {
        this.targetSpeedModifier = targetSpeedModifier;
    }
    getSpeed() {
        return this.currentSpeed;
    }
    getDirection() {
        var _a;
        return (_a = this.direction) !== null && _a !== void 0 ? _a : vec3.zero();
    }
    setPosition(position) {
        this.rootT.setWorldPosition(position.sub(this.colliderOffset.uniformScale(this.initialScale.x)));
        this.currentPosition = position;
    }
    updateCharacterY(y) {
        if (!isNull(y)) {
            const pos = this.currentPosition;
            pos.y = y;
        }
    }
    getPosition() {
        return this.colliderT.getWorldPosition();
    }
    /**
     * Call on update event.
     * @param deltaTime - delta time of update event.
     */
    update(deltaTime, onComplete) {
        this.previousPosition = this.currentPosition;
        this.updateSpeed(deltaTime);
        this.updatePosition(deltaTime, () => {
            this.updateRotation();
            onComplete();
        });
    }
    clearDirection() {
        if (this.isDirectionValid()) {
            this.previousDirection = this.direction;
        }
        this.direction = null;
    }
    updateInAir(deltaTime, onComplete) {
        this.previousPosition = this.currentPosition;
        if (this.direction) {
            this.direction = this.direction.uniformScale(this.settings.airControl);
        }
        this.updateSpeed(deltaTime);
        this.updatePosition(deltaTime, () => {
            this.updateRotation();
            onComplete();
        });
    }
    applyGravity(deltaTime, minY) {
        if (this.lockAxisController.lockYAxis) {
            return;
        }
        const pos = this.currentPosition;
        this.speedY += this.settings.gravity * deltaTime;
        pos.y += this.speedY * deltaTime;
        if (minY !== null) {
            pos.y = Math.max(pos.y, minY);
        }
        this.currentPosition = pos;
    }
    clearGravity() {
        this.speedY = 0;
    }
    setRotation(rotation) {
        this.rootT.setWorldRotation(rotation);
        this.ensureRotationIsCorrect();
    }
    getRotation() {
        this.ensureRotationIsCorrect();
        return this.rootT.getWorldRotation();
    }
    ensureRotationIsCorrect() {
        // character controller can rotate only around y axis
        const forward = this.rootT.forward;
        forward.y = 0;
        this.rootT.setWorldRotation(quat.lookAt(forward, vec3.up()));
    }
    updateSpeed(deltaTime) {
        const targetSpeed = this.getTargetSpeed();
        const maxSpeed = this.currentSpeed + this.settings.acceleration * deltaTime;
        const minSpeed = this.currentSpeed - this.settings.deceleration * deltaTime;
        this.currentSpeed = MathUtils.clamp(targetSpeed, minSpeed, maxSpeed);
    }
    getTargetSpeed() {
        if (this.isDirectionValid()) {
            return this.settings.sprintEnabled
                ? this.settings.sprintSpeed
                : this.settings.moveSpeed * this.targetSpeedModifier;
        }
        else {
            return 0;
        }
    }
    updatePosition(deltaTime, onComplete) {
        const direction = this.isDirectionValid() ? this.direction : this.previousDirection;
        if (direction) {
            const offset = direction.uniformScale(this.currentSpeed * deltaTime);
            if (offset.length >= this.settings.minMoveDistance) {
                const nextPosition = this.previousPosition.add(offset);
                this.currentPosition = nextPosition;
                onComplete();
            }
            else {
                onComplete();
            }
        }
        else {
            onComplete();
        }
    }
    updateRotation() {
        if (this.settings.autoFaceMovementDirection) {
            const currentPosition = this.currentPosition;
            let targetDirection = currentPosition.sub(this.previousPosition);
            targetDirection.y = 0;
            if (targetDirection.length > Utils_1.Utils.EPS) {
                targetDirection = targetDirection.normalize();
                let currentDirection = this.rootT.forward;
                currentDirection.y = 0;
                currentDirection = currentDirection.normalize();
                const smoothing = Math.min(1, Math.max(0, this.settings.rotationSmoothing));
                const direction = this.interpolateRotationDirection(currentDirection, targetDirection, smoothing);
                const isDirectionInvalid = isNaN(direction.x) || isNaN(direction.y) || isNaN(direction.z);
                if (!isDirectionInvalid) {
                    this.rootT.setWorldRotation(quat.lookAt(direction, vec3.up()));
                    return;
                }
            }
        }
        const direction = this.rootT.forward;
        direction.y = 0;
        this.rootT.setWorldRotation(quat.lookAt(direction, vec3.up()));
    }
    interpolateRotationDirection(currentDirection, targetDirection, smoothing) {
        if (currentDirection.cross(targetDirection).length < Utils_1.Utils.EPS) {
            if (Math.abs(currentDirection.x - targetDirection.x) < Utils_1.Utils.EPS
                && Math.abs(currentDirection.z - targetDirection.z) < Utils_1.Utils.EPS) {
                return targetDirection;
            }
            else {
                const angleTarget = (Math.PI * 2 + (Math.atan2(targetDirection.z, targetDirection.x) % (Math.PI * 2))) % (Math.PI * 2);
                const angleCurrent = (Math.PI * 2 + (Math.atan2(currentDirection.z, currentDirection.x) % (Math.PI * 2))) % (Math.PI * 2);
                const angle = angleCurrent * (1 - smoothing) + angleTarget * smoothing;
                return new vec3(Math.cos(angle), 0, Math.sin(angle));
            }
        }
        return vec3.slerp(currentDirection, targetDirection, 1 - smoothing);
    }
    isDirectionValid() {
        return this.direction && this.direction.length > Utils_1.Utils.EPS;
    }
    lockAxisIfNeeded() {
        if (this.direction) {
            this.direction = this.lockAxisController.updateDirection(this.direction);
        }
    }
}
exports.MovementController = MovementController;
//# sourceMappingURL=MovementController.js.map