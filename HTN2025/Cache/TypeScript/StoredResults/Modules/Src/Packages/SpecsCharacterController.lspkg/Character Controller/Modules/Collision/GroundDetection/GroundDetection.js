"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.GroundDetection = void 0;
const ShapeCastGroundDetection_1 = require("./ShapeCastGroundDetection");
const DisabledGroundDetectionStrategy_1 = require("./DisabledGroundDetectionStrategy");
/**
 * Provides GroundDetection or mock depending on lock y axis.
 */
class GroundDetection {
    constructor(settings, characterCollider, logger, lockAxisController, shapeForShapeCast, callbackWrapper) {
        this.lockAxisController = lockAxisController;
        this.wasYAxisLocked = this.lockAxisController.lockYAxis;
        this.shapeCastGroundDetection = new ShapeCastGroundDetection_1.ShapeCastGroundDetection(settings, characterCollider, lockAxisController, shapeForShapeCast, logger, callbackWrapper);
        this.disabledGroundDetection = new DisabledGroundDetectionStrategy_1.DisabledGroundDetectionStrategy();
    }
    reset() {
        this.strategy.reset();
    }
    initialize(pos, onReady) {
        this.strategy.initialize(pos, onReady);
    }
    getGroundCollider() {
        return this.strategy.getGroundCollider();
    }
    getSteepGroundCollider() {
        return this.strategy.getSteepGroundCollider();
    }
    getGroundNormal() {
        return this.strategy.getGroundNormal();
    }
    checkGroundExists() {
        return this.strategy.checkGroundExists();
    }
    setCharacterPosition(pos) {
        this.strategy.setCharacterPosition(pos);
    }
    getNewWorldPositionOnGround(position) {
        return this.strategy.getNewWorldPositionOnGround(position);
    }
    isOnSteepGround() {
        return this.strategy.isOnSteepGround();
    }
    getSteepGroundNormal() {
        return this.strategy.getSteepGroundNormal();
    }
    updateDirectionOnGround(direction) {
        return this.strategy.updateDirectionOnGround(direction);
    }
    findGround(settings, onReady) {
        this.strategy.findGround(settings, onReady);
    }
    findGroundAndApply(settings, onReady) {
        this.strategy.findGroundAndApply(settings, onReady);
    }
    applyGround(groundInfo) {
        this.strategy.applyGround(groundInfo);
    }
    getIsCharacterOnGround() {
        return this.strategy.getIsCharacterOnGround();
    }
    getGroundY() {
        return this.strategy.getGroundY();
    }
    getMinCharacterY() {
        return this.strategy.getMinCharacterY();
    }
    get strategy() {
        if (this.lockAxisController.lockYAxis) {
            if (this.wasYAxisLocked) {
                this.wasYAxisLocked = false;
                this.shapeCastGroundDetection.reset();
            }
            return this.disabledGroundDetection;
        }
        else {
            this.wasYAxisLocked = true;
            return this.shapeCastGroundDetection;
        }
    }
}
exports.GroundDetection = GroundDetection;
//# sourceMappingURL=GroundDetection.js.map