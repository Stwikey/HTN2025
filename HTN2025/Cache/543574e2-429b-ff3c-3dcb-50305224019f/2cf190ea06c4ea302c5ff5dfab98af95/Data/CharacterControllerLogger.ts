import { MovementController } from "../MovementController";
import { CharacterController } from "../../Character Controller";

/**
 * CharacterControllerLogger handles logging warnings.
 * It also can be used to debug Character Controller if text input is added
 * to component and set to CharacterControllerLogger's constructor.
 */
export class CharacterControllerLogger {

    private readonly shouldLogPositions: boolean = true;

    private readonly shouldLogOverlapInfo: boolean = false;

    private readonly shouldLogGroundInfo: boolean = true;

    private readonly shouldLogColliderConstraints: boolean = true;

    constructor(private readonly shouldPrintWarnings: boolean,
        private readonly text: Text,
        private readonly movementControllerProvider: () => MovementController) {}

    printWarning(message: string): void {
        if (this.shouldPrintWarnings) {
            print(CharacterController.name + " - WARNING, " + message);
        }
    }

    clear(): void {
        if (this.text) {
            this.text.text = "";
        }
    }

    logGroundInfo(getMessage: () => string): void {
        if (this.text && this.shouldLogGroundInfo) {
            this.text.text += "\n" + getMessage() + "\n\n";
        }
    }

    logPosition(getMessage: () => string): void {
        if (this.text && this.shouldLogPositions) {
            this.text.text += "\n" + getMessage() + " : \n" + this.movementControllerProvider().currentPosition + "\n";
        }
    }

    logOverlapInfo(getMessage: () => string): void {
        if (this.text && this.shouldLogOverlapInfo) {
            this.text.text += "\n" + getMessage();
        }
    }

    logColliderConstraints(getMessage: () => string): void {
        if (this.text && this.shouldLogColliderConstraints) {
            this.text.text += "\n" + getMessage();
        }
    }
}
