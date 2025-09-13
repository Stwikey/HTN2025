"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.InputsValidator = void 0;
const MIN_VALUE_POSITIVE_NUMBER = 1e-4;
/**
 * InputsValidator has methods to validate component inputs and API arguments,
 * prints messages in case there is a problem.
 */
class InputsValidator {
    constructor(logger) {
        this.logger = logger;
    }
    validateSceneObjectInScreenHierarchy(so) {
        return so.getComponent("ScreenTransform")
            && so.getComponent("ScreenTransform")
                .isInScreenHierarchy();
    }
    validateNonNull(name, value, defaultValue = null) {
        if (isNull(value)) {
            this.logger.printWarning(name + " should be set");
            return defaultValue;
        }
        return value;
    }
    validateNonNegativeNumber(name, value) {
        if (isNull(value)) {
            this.logger.printWarning(name + " can not be null or undefined");
            return 0;
        }
        if (value < 0) {
            this.logger.printWarning(name + " can not be less than 0");
        }
        return Math.abs(value);
    }
    validateNonPositiveNumber(name, value) {
        if (isNull(value)) {
            this.logger.printWarning(name + " can not be null or undefined");
            return 0;
        }
        if (value > 0) {
            this.logger.printWarning(name + " can not be bigger than 0");
        }
        return -Math.abs(value);
    }
    validatePositiveNumber(name, value) {
        value = this.validateNonNegativeNumber(name, value);
        if (Math.abs(value) <= MIN_VALUE_POSITIVE_NUMBER) {
            this.logger.printWarning(name + " can not be equal to 0");
            return MIN_VALUE_POSITIVE_NUMBER;
        }
        return value;
    }
    validateBoolean(value) {
        return !!value;
    }
    validateAirControl(value) {
        value = this.validateNonNegativeNumber("Air Control", value);
        return Math.min(1, Math.max(0, value));
    }
}
exports.InputsValidator = InputsValidator;
//# sourceMappingURL=InputsValidator.js.map