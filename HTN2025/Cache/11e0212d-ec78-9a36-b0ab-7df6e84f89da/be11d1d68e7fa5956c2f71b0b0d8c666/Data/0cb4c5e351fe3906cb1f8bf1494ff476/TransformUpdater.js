"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.TransformUpdater = void 0;
/**
 * TransformUpdater handles position and rotation updates of character considering
 * collisions and ground detection.
 */
class TransformUpdater {
    constructor(rootSO, movementController, collisionsController, logger, lockAxisController) {
        this.rootSO = rootSO;
        this.movementController = movementController;
        this.collisionsController = collisionsController;
        this.logger = logger;
        this.lockAxisController = lockAxisController;
        this.transform = this.rootSO.getTransform();
        this.initialScale = this.transform.getWorldScale();
        this.initialScale.y = this.initialScale.x;
        this.initialScale.z = this.initialScale.x;
        this.transform.setWorldScale(this.initialScale);
    }
    getInitialScale() {
        return this.initialScale;
    }
    update() {
        this.checkScale();
        this.moveCharacter(getDeltaTime(), () => {
            this.movementController.clearDirection();
        });
    }
    moveCharacter(dt, onComplete) {
        const onMovementFinished = (positionAfterFixingOverlaps) => {
            this.finalizeMovement(positionAfterFixingOverlaps, onComplete);
        };
        this.collisionsController.groundDetection.initialize(this.movementController.currentPosition, (initialPos) => {
            if (initialPos) {
                this.movementController.setPosition(initialPos);
                this.movementController.currentPosition = initialPos;
            }
            const positionBefore = this.movementController.currentPosition.add(vec3.zero());
            this.logger.logPosition(() => "INITIAL POSITION");
            if (this.collisionsController.groundDetection.getIsCharacterOnGround()) {
                this.logger.logPosition(() => "POS ON GROUND");
                if (this.collisionsController.groundDetection.checkGroundExists()) {
                    this.moveOnGround(dt, onMovementFinished);
                }
                else {
                    this.logger.logPosition(() => "GROUND DOES NOT EXIST");
                    this.collisionsController.groundDetection.findGroundAndApply({
                        findSteepGround: true,
                        initialPosition: positionBefore,
                        nextPosition: this.movementController.currentPosition,
                        skipStepHeight: true,
                    }, () => this.moveCharacter(dt, onComplete));
                }
            }
            else {
                this.moveMidAir(dt, positionBefore, onMovementFinished);
            }
        });
    }
    moveOnGround(dt, onComplete) {
        this.movementController.clearGravity();
        const worldPositionOnGround = this.collisionsController.groundDetection.getNewWorldPositionOnGround(this.movementController.currentPosition);
        if (worldPositionOnGround) {
            this.movementController.currentPosition = worldPositionOnGround;
        }
        this.logger.logPosition(() => "POS ON GROUND");
        const worldPositionOnGroundCopy = this.movementController.currentPosition.add(vec3.zero());
        this.collisionsController.overlapRecovery.fixOverlaps(this.movementController.currentPosition, (pos) => {
            this.movementController.currentPosition = pos;
            this.logger.logPosition(() => "FIX OVERLAPS");
            const positionAfterFixingOverlaps = this.movementController.currentPosition.add(vec3.zero());
            if (this.movementController.getDirection()) {
                this.movementController.move(this.lockAxisController.updateDirection(this.collisionsController.groundDetection.updateDirectionOnGround(this.movementController.getDirection())));
            }
            this.movementController.update(dt, () => {
                this.logger.logPosition(() => "AFTER UPDATE");
                this.collisionsController.groundDetection.findGroundAndApply({
                    findSteepGround: true,
                    initialPosition: worldPositionOnGroundCopy,
                    nextPosition: this.movementController.currentPosition,
                }, () => {
                    onComplete(positionAfterFixingOverlaps);
                });
            });
        });
    }
    moveMidAir(dt, positionBefore, onComplete) {
        this.logger.logPosition(() => "NO GROUND");
        const initPos = this.movementController.currentPosition.add(vec3.zero());
        this.collisionsController.overlapRecovery.fixOverlaps(this.movementController.currentPosition, (pos) => {
            this.movementController.currentPosition = pos;
            this.logger.logPosition(() => "FIX OVERLAPS");
            const positionAfterFixingOverlaps = this.movementController.currentPosition.add(vec3.zero());
            this.movementController.updateInAir(dt, () => {
                this.logger.logPosition(() => "UPDATED MID AIR");
                this.movementController.applyGravity(dt, this.collisionsController.groundDetection.getMinCharacterY());
                this.logger.logPosition(() => "GRAVITY APPLIED");
                if (this.collisionsController.groundDetection.isOnSteepGround()) {
                    const normal = this.collisionsController.groundDetection.getSteepGroundNormal();
                    if (normal) {
                        let direction = this.movementController.currentPosition.sub(initPos);
                        direction = direction.projectOnPlane(normal);
                        this.movementController.currentPosition = direction.add(initPos);
                    }
                    this.logger.logPosition(() => "ON STEEP GROUND");
                }
                this.collisionsController.handleCollidersConstraintWhileFalling([
                    this.collisionsController.groundDetection.getSteepGroundCollider(),
                    this.collisionsController.groundDetection.getGroundCollider(),
                ], positionBefore, this.movementController.currentPosition, (position) => {
                    this.movementController.currentPosition = position;
                    this.logger.logPosition(() => "COLLIDERS CONSTRAINT");
                    this.collisionsController.groundDetection.findGroundAndApply({
                        findSteepGround: true,
                        skipStepHeight: false,
                        initialPosition: positionBefore,
                        nextPosition: this.movementController.currentPosition,
                    }, () => {
                        if (this.collisionsController.groundDetection.getIsCharacterOnGround()) {
                            this.movementController.updateCharacterY(this.collisionsController.groundDetection.getGroundY());
                        }
                        this.logger.logPosition(() => "FALL ON GROUND");
                        onComplete(positionAfterFixingOverlaps);
                    });
                });
            });
        });
    }
    finalizeMovement(positionAfterFixingOverlaps, onComplete) {
        if (this.collisionsController.groundDetection.getIsCharacterOnGround()) {
            this.movementController.updateCharacterY(this.collisionsController.groundDetection.getGroundY());
        }
        this.logger.logPosition(() => "GROUND FOUND");
        const nextPos = this.movementController.currentPosition;
        this.collisionsController.handleStaticCollidersConstraint([
            this.collisionsController.groundDetection.getSteepGroundCollider(),
            this.collisionsController.groundDetection.getGroundCollider(),
        ], positionAfterFixingOverlaps, nextPos, (pos) => {
            this.movementController.currentPosition = pos;
            this.logger.logPosition(() => "COLLIDERS CONSTRAINT");
            this.movementController.setPosition(this.movementController.currentPosition);
            this.collisionsController.groundDetection.setCharacterPosition(this.movementController.currentPosition);
            this.logger.logPosition(() => "FINISH");
            onComplete();
        });
    }
    ;
    checkScale() {
        this.transform.setWorldScale(this.initialScale);
    }
}
exports.TransformUpdater = TransformUpdater;
//# sourceMappingURL=TransformUpdater.js.map