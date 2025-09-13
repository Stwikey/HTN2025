"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.CharacterControllerLogger = void 0;
const Character_Controller_1 = require("../../Character Controller");
/**
 * CharacterControllerLogger handles logging warnings.
 * It also can be used to debug Character Controller if text input is added
 * to component and set to CharacterControllerLogger's constructor.
 */
class CharacterControllerLogger {
    constructor(shouldPrintWarnings, text, movementControllerProvider) {
        this.shouldPrintWarnings = shouldPrintWarnings;
        this.text = text;
        this.movementControllerProvider = movementControllerProvider;
        this.shouldLogPositions = true;
        this.shouldLogOverlapInfo = false;
        this.shouldLogGroundInfo = true;
        this.shouldLogColliderConstraints = true;
    }
    printWarning(message) {
        if (this.shouldPrintWarnings) {
            print(Character_Controller_1.CharacterController.name + " - WARNING, " + message);
        }
    }
    clear() {
        if (this.text) {
            this.text.text = "";
        }
    }
    logGroundInfo(getMessage) {
        if (this.text && this.shouldLogGroundInfo) {
            this.text.text += "\n" + getMessage() + "\n\n";
        }
    }
    logPosition(getMessage) {
        if (this.text && this.shouldLogPositions) {
            this.text.text += "\n" + getMessage() + " : \n" + this.movementControllerProvider().currentPosition + "\n";
        }
    }
    logOverlapInfo(getMessage) {
        if (this.text && this.shouldLogOverlapInfo) {
            this.text.text += "\n" + getMessage();
        }
    }
    logColliderConstraints(getMessage) {
        if (this.text && this.shouldLogColliderConstraints) {
            this.text.text += "\n" + getMessage();
        }
    }
}
exports.CharacterControllerLogger = CharacterControllerLogger;
//# sourceMappingURL=CharacterControllerLogger.js.map