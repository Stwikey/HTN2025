"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.CharacterController = void 0;
var __selfType = requireType("./Character Controller");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const MovementController_1 = require("./Modules/MovementController");
const CollisionsController_1 = require("./Modules/Collision/CollisionsController");
const Utils_1 = require("./Modules/Utils/Utils");
const JoystickInputControl_1 = require("./Modules/Input/Joystick/JoystickInputControl");
const BasicMovementAnimationController_1 = require("./Modules/Animation/BasicMovement/BasicMovementAnimationController");
const LockAxisController_1 = require("./Modules/LockAxisController");
const ProbeHelper_1 = require("./Modules/Collision/CollisionHelpers/ProbeHelper");
const InputsValidator_1 = require("./Modules/InputsValidator");
const CharacterControllerLogger_1 = require("./Modules/Utils/CharacterControllerLogger");
const CallbacksWrapper_1 = require("./Modules/Utils/CallbacksWrapper");
const TransformUpdater_1 = require("./Modules/TransformUpdater");
const BitmojiMixamoAnimationIsEnabledChecker_1 = require("./Modules/Utils/BitmojiMixamoAnimationIsEnabledChecker");
/**
 * CharacterController
 * Version 1.0.0
 *
 * The Character Controller Component is a modular, customizable movement system designed to
 * support various gameplay formats, including third-person, first-person, side-scroller, and
 * top-down perspectives. It provides a non-physics-based movement model with optional physics
 * interactions, allowing for smooth, responsive controls without physics body dependencies.
 *
 *
 *
 * API:
 *
 * move(direction: vec3): void - Moves the character in the specified direction. Y value will be ignored. To use this API to set character direction manually, please set Input Control Type to None.
 * stopMovement(): void - Immediately stops character movement.
 * setPosition(position: vec3): void - Teleports the character to a specific world position.
 * getPosition(): vec3 - Returns the current world position of the character.
 * setRotation(rotation: quat): void - Sets the character's facing rotation. Will rotate character only around y axis.
 * getRotation(): quat - Gets the character's current rotation.
 * getDirection(): vec3 - Returns the current movement direction.
 * setSprintEnabled(enabled: boolean): void - If true, enables sprinting speed, disables otherwise.
 * isSprinting(): boolean - Returns true if sprint is currently active.
 * setMoveSpeed(speed: number): void - Sets the character's base movement speed.
 * getMoveSpeed(): number - Returns the current base movement speed.
 * setSprintSpeed(speed: number): void - Sets the character's sprint speed.
 * getSprintSpeed(): number - Returns the current sprint speed.
 * isGrounded(): boolean - Returns true if the character is currently grounded.
 * isMoving(): boolean - Returns true if the character is currently moving.
 * getVelocity(): vec3 - Returns the character's current velocity vector.
 * setAutoFaceMovement(enabled: boolean): void - Enables or disables auto-facing toward movement direction.
 * getAutoFaceMovement(): boolean - Returns whether auto-facing movement is enabled.
 * setAcceleration(value: number): void - Sets the acceleration
 * getAcceleration(): number - Returns the acceleration
 * setDeceleration(value: number): void - Sets the deceleration
 * getDeceleration(): number - Returns the deceleration
 * setShowCollider(value: boolean): void - If true is set character's collider is visible
 * getShowCollider(): boolean - Returns whether character's collider is visible
 * setLockXAxis(enabled: boolean): void - Enables or disables movement along the X axis.
 * getLockXAxis(): boolean - Returns whether movement along the X axis is currently locked.
 * setLockYAxis(enabled: boolean): void - Enables or disables movement along the Y axis.
 * getLockYAxis(): boolean - Returns whether movement along the Y axis is currently locked.
 * setLockZAxis(enabled: boolean): void - Enables or disables movement along the Z axis.
 * getLockZAxis(): boolean - Returns whether movement along the Z axis is currently locked.
 *
 *
 *
 * API Events:
 *
 * onCollisionEnter: event1<CollisionEnterEventArgs, void> - Triggered when character starts colliding with another collider.
 * onCollisionStay(): event1<CollisionEnterEventArgs, void> - Triggered while character remains in collision.
 * onCollisionExit: event1<CollisionEnterEventArgs, void> - Triggered when character exits a collision.
 * onOverlapEnter(): event1<OverlapEnterEventArgs, void> - Triggered when character enters an overlap volume.
 * onOverlapStay(): event1<OverlapEnterEventArgs, void> - Triggered while character remains in overlap volumes.
 * onOverlapExit(): event1<OverlapEnterEventArgs, void> - Triggered when character exits an overlap volume.
 *
 */
let CharacterController = class CharacterController extends BaseScriptComponent {
    onAwake() {
        this.updateEvent = this.createEvent("UpdateEvent");
        this.updateEvent.bind(this.onUpdate);
        this.onUpdate();
        this.createEvent("OnDestroyEvent").bind(this.onDestroy);
        this.createEvent("OnEnableEvent").bind(this.onEnable);
        this.createEvent("OnDisableEvent").bind(this.onDisable);
        this.updateRenderLayerIfNeeded();
        this.initializeAnimationController();
        this.checkMixamoAnimationIsEnabledForBitmoji3D();
        this.initializeInputControl();
        if (this.enableTouchBlocking) {
            global.touchSystem.touchBlocking = true;
        }
    }
    //HACK: ADDED THESE
    setTargetSpeedModifier(value) {
        this.movementController.setTargetSpeedModifier(value);
    }
    setInputType(inputType) {
        this.inputControlType = inputType;
        this.initializeInputControl();
    }
    //END HACK
    /**
     * Set direction in which character will move on next update.
     * Call move on each update, otherwise character will stop.
     * @param direction - direction vector, will be normalised, y is skipped
     */
    move(direction) {
        this.assertNotDestroyed();
        if (direction) {
            direction = new vec3(direction.x, 0, direction.z);
        }
        this.movementController.move(direction);
    }
    stopMovement() {
        this.assertNotDestroyed();
        this.movementController.reset();
        this.animationController && this.animationController.reset();
    }
    setPosition(position) {
        this.assertNotDestroyed();
        if (!isNull(position)) {
            this.movementController.setPosition(position);
            this.collisionsController.groundDetection.reset();
        }
    }
    getPosition() {
        this.assertNotDestroyed();
        return Utils_1.Utils.copyVec3(this.movementController.currentPosition);
    }
    setRotation(rotation) {
        this.assertNotDestroyed();
        if (!isNull(rotation)) {
            this.movementController.setRotation(rotation);
        }
    }
    getRotation() {
        this.assertNotDestroyed();
        return this.movementController.getRotation();
    }
    getDirection() {
        this.assertNotDestroyed();
        const direction = this.movementController.getNextDirection() || vec3.zero();
        return Utils_1.Utils.copyVec3(direction);
    }
    /**
     * If enabled is true enable sprint movement instead of walking
     * (character walks by default), otherwise disable sprint movement
     * and switch to walking.
     * For sprint sprintSpeed is used; for walking - moveSpeed.
     * @param enabled
     */
    setSprintEnabled(enabled) {
        this.assertNotDestroyed();
        this.settings.sprintEnabled = this.inputsValidator.validateBoolean(enabled);
    }
    /**
     * Get flag whether sprint movement instead of walking is enabled.
     */
    isSprinting() {
        this.assertNotDestroyed();
        return this.settings.sprintEnabled;
    }
    setMoveSpeed(speed) {
        this.assertNotDestroyed();
        this.settings.moveSpeed = this.inputsValidator.validateNonNegativeNumber("Move Speed", speed);
    }
    getMoveSpeed() {
        this.assertNotDestroyed();
        return this.settings.moveSpeed;
    }
    setSprintSpeed(speed) {
        this.assertNotDestroyed();
        this.settings.sprintSpeed = this.inputsValidator.validateNonNegativeNumber("Sprint Speed", speed);
    }
    getSprintSpeed() {
        this.assertNotDestroyed();
        return this.settings.sprintSpeed;
    }
    isGrounded() {
        this.assertNotDestroyed();
        return !!this.collisionsController.groundDetection.getIsCharacterOnGround();
    }
    isMoving() {
        this.assertNotDestroyed();
        return this.movementController.isMoving();
    }
    getVelocity() {
        this.assertNotDestroyed();
        return this.movementController.getVelocity();
    }
    setAutoFaceMovement(enabled) {
        this.assertNotDestroyed();
        this.settings.autoFaceMovementDirection =
            this.inputsValidator.validateBoolean(enabled);
    }
    getAutoFaceMovement() {
        this.assertNotDestroyed();
        return this.settings.autoFaceMovementDirection;
    }
    setAcceleration(value) {
        this.assertNotDestroyed();
        this.settings.acceleration = this.inputsValidator.validateNonNegativeNumber("Acceleration", value);
    }
    getAcceleration() {
        this.assertNotDestroyed();
        return this.settings.acceleration;
    }
    setDeceleration(value) {
        this.assertNotDestroyed();
        this.settings.deceleration = this.inputsValidator.validateNonNegativeNumber("Deceleration", value);
    }
    getDeceleration() {
        this.assertNotDestroyed();
        return this.settings.deceleration;
    }
    /**
     * Enable or disable collider.
     * @param value
     */
    setShowCollider(value) {
        this.assertNotDestroyed();
        this.settings.showCollider = this.inputsValidator.validateBoolean(value);
        this.collisionsController.setDebugDrawEnabled(this.settings.showCollider);
    }
    /**
     * Get flag if collider is shown.
     */
    getShowCollider() {
        this.assertNotDestroyed();
        return this.settings.showCollider;
    }
    get onCollisionEnter() {
        this.assertNotDestroyed();
        return this.collisionsController.characterCollider.onCollisionEnter;
    }
    get onCollisionStay() {
        this.assertNotDestroyed();
        return this.collisionsController.characterCollider.onCollisionStay;
    }
    get onCollisionExit() {
        this.assertNotDestroyed();
        return this.collisionsController.characterCollider.onCollisionExit;
    }
    get onOverlapEnter() {
        this.assertNotDestroyed();
        return this.collisionsController.characterCollider.onOverlapEnter;
    }
    get onOverlapStay() {
        this.assertNotDestroyed();
        return this.collisionsController.characterCollider.onOverlapStay;
    }
    get onOverlapExit() {
        this.assertNotDestroyed();
        return this.collisionsController.characterCollider.onOverlapExit;
    }
    setLockXAxis(enabled) {
        this.assertNotDestroyed();
        this.settings.lockXAxis = this.inputsValidator.validateBoolean(enabled);
    }
    getLockXAxis() {
        this.assertNotDestroyed();
        return this.settings.lockXAxis;
    }
    setLockYAxis(enabled) {
        this.assertNotDestroyed();
        this.settings.lockYAxis = this.inputsValidator.validateBoolean(enabled);
    }
    getLockYAxis() {
        this.assertNotDestroyed();
        return this.settings.lockYAxis;
    }
    setLockZAxis(enabled) {
        this.assertNotDestroyed();
        this.settings.lockZAxis = this.inputsValidator.validateBoolean(enabled);
    }
    getLockZAxis() {
        this.assertNotDestroyed();
        return this.settings.lockZAxis;
    }
    updateRenderLayerIfNeeded() {
        if (this.getSceneObject().layer !== this.renderLayer) {
            this.renderLayer = this.getSceneObject().layer;
            Utils_1.Utils.assignRenderLayerRecursively(this.getSceneObject(), this.renderLayer);
        }
    }
    waitForAllUpdatesToBeFinished(onComplete) {
        // Ray casts are performed after simulation update, which occurs after script Update but prior to LateUpdate.
        this.probe.rayCast(this.colliderCenter.add(vec3.up()), this.colliderCenter, this.callbackWrapper.wrap(onComplete));
    }
    initializeAnimationController() {
        if (this.useAnimation) {
            const animationConfig = {
                idleAnimation: {
                    animationAsset: this.idleAnimationAsset,
                    playbackSpeed: this.idlePlaybackSpeed,
                },
                moveAnimationConfigs: [
                    {
                        minCharacterSpeed: this.moveMinCharacterSpeed,
                        animationAsset: this.moveAnimationAsset,
                        playbackSpeed: this.movePlaybackSpeed,
                    },
                    {
                        minCharacterSpeed: this.sprintMinCharacterSpeed,
                        animationAsset: this.sprintAnimationAsset,
                        playbackSpeed: this.sprintPlaybackSpeed,
                    },
                ],
            };
            this.animationController = new BasicMovementAnimationController_1.BasicMovementAnimationController(animationConfig, this.getSceneObject());
            this.animationController.bindSpeedProvider(this.movementController);
        }
    }
    getInputControlDirection() {
        var _a, _b;
        return (_b = (_a = this.inputControl) === null || _a === void 0 ? void 0 : _a.getDirection()) !== null && _b !== void 0 ? _b : vec3.zero();
    }
    initializeInputControl() {
        if (this.inputControlType === 1) {
            this.inputControl = new JoystickInputControl_1.JoystickInputControl(this.joystickConfig, this.trackingCamera.getSceneObject());
        }
    }
    checkMixamoAnimationIsEnabledForBitmoji3D() {
        if (this.useAnimation) {
            const checker = new BitmojiMixamoAnimationIsEnabledChecker_1.BitmojiMixamoAnimationIsEnabledChecker();
            const updateEvent = this.createEvent("UpdateEvent");
            updateEvent.bind(() => {
                checker.checkIsMixamoEnabled(this.getSceneObject(), this.logger, () => (updateEvent.enabled = false));
            });
        }
    }
    validateInputs() {
        this.moveSpeed = this.inputsValidator.validateNonNegativeNumber("Move Speed", this.moveSpeed);
        this.sprintSpeed = this.inputsValidator.validateNonNegativeNumber("Sprint Speed", this.sprintSpeed);
        this.acceleration = this.inputsValidator.validateNonNegativeNumber("Acceleration", this.acceleration);
        this.deceleration = this.inputsValidator.validateNonNegativeNumber("Deceleration", this.deceleration);
        this.minMoveDistance = this.inputsValidator.validateNonNegativeNumber("Min Move Distance", this.minMoveDistance);
        this.autoFaceMovementDirection = this.inputsValidator.validateBoolean(this.autoFaceMovementDirection);
        this.rotationSmoothing = this.inputsValidator.validateNonNegativeNumber("Rotation Smoothing", this.rotationSmoothing);
        this.lockXAxis = this.inputsValidator.validateBoolean(this.lockXAxis);
        this.lockYAxis = this.inputsValidator.validateBoolean(this.lockYAxis);
        this.lockZAxis = this.inputsValidator.validateBoolean(this.lockZAxis);
        this.showCollider = this.inputsValidator.validateBoolean(this.showCollider);
        this.groundCheckDistance = this.inputsValidator.validatePositiveNumber("Ground Check Distance", this.groundCheckDistance);
        this.slopeLimit = this.inputsValidator.validatePositiveNumber("Slope Limit", this.slopeLimit);
        this.stepHeight = this.inputsValidator.validatePositiveNumber("Step Height", this.stepHeight);
        this.groundIsZero = this.inputsValidator.validateBoolean(this.groundIsZero);
        this.colliderHeight = this.inputsValidator.validateNonNegativeNumber("Collider Height", this.colliderHeight);
        this.colliderRadius = this.inputsValidator.validatePositiveNumber("Collider Radius", this.colliderRadius);
        this.colliderCenter = this.inputsValidator.validateNonNull("Collider Center", this.colliderCenter, vec3.zero());
        this.gravity = this.inputsValidator.validateNonPositiveNumber("Gravity", this.gravity);
        this.airControl = this.inputsValidator.validateAirControl(this.airControl);
        if (this.inputControlType === 1) {
            if (!this.trackingCamera) {
                this.logger.printWarning("Set Tracking Camera to input to use joystick");
                this.inputControlType = 0;
            }
            if (!this.joystickConfig) {
                this.logger.printWarning("Joystick config is missing");
                this.inputControlType = 0;
            }
            else {
                if (this.joystickConfig.joystickPositionTypeConfig ===
                    JoystickInputControl_1.JoystickPositionTypeConfig.Custom) {
                    if (!this.joystickConfig.joystickParent) {
                        this.logger.printWarning("Custom joystick position type requires a parent object. " +
                            "Set Joystick Parent to input to use joystick");
                        this.inputControlType = 0;
                    }
                    else {
                        if (!this.inputsValidator.validateSceneObjectInScreenHierarchy(this.joystickConfig.joystickParent)) {
                            this.logger.printWarning("Joystick Parent should be in screen hierarchy to use joystick");
                            this.inputControlType = 0;
                        }
                    }
                }
            }
        }
        if (this.useAnimation) {
            this.inputsValidator.validateNonNull("Idle Animation Asset", this.idleAnimationAsset);
            this.inputsValidator.validateNonNull("Move Animation Asset", this.moveAnimationAsset);
            this.inputsValidator.validateNonNull("Sprint Animation Asset", this.sprintAnimationAsset);
        }
    }
    assertNotDestroyed() {
        if (isNull(this)) {
            throw new Error("Object is null - component was destroyed");
        }
    }
    __initialize() {
        super.__initialize();
        this.renderLayer = null;
        this.onDestroy = () => {
            if (!isNull(this)) {
                if (this.inputControl) {
                    this.inputControl.onDestroy();
                }
            }
        };
        this.onEnable = () => {
            if (this.inputControl) {
                this.inputControl.enable();
            }
            this.collisionsController.groundDetection.reset();
        };
        this.onDisable = () => {
            if (this.inputControl) {
                this.inputControl.disable();
            }
        };
        this.onUpdate = () => {
            this.logger.clear();
            this.waitForAllUpdatesToBeFinished(() => {
                this.updateRenderLayerIfNeeded();
                if (this.inputControlType === 1) {
                    const inputControlDirection = this.getInputControlDirection();
                    this.movementController.move(inputControlDirection);
                    this.movementController.setTargetSpeedModifier(inputControlDirection.length);
                }
                this.transformUpdater.update();
            });
        };
        this.callbackWrapper = new CallbacksWrapper_1.CallbacksWrapper(this);
        this.logger = new CharacterControllerLogger_1.CharacterControllerLogger(this.printWarningStatements, null, () => this.movementController);
        this.inputsValidator = new InputsValidator_1.InputsValidator(this.logger);
        this.validateInputs();
        this.settings = {
            moveSpeed: this.moveSpeed,
            sprintSpeed: this.sprintSpeed,
            acceleration: this.acceleration,
            deceleration: this.deceleration,
            minMoveDistance: this.minMoveDistance,
            autoFaceMovementDirection: this.autoFaceMovementDirection,
            rotationSmoothing: this.rotationSmoothing,
            lockXAxis: this.lockXAxis,
            lockYAxis: this.lockYAxis,
            lockZAxis: this.lockZAxis,
            showCollider: this.showCollider,
            groundCheckDistance: this.groundCheckDistance,
            maxGroundAngle: this.slopeLimit,
            stepHeight: this.stepHeight,
            groundIsZero: this.groundIsZero,
            colliderHeight: this.colliderHeight,
            colliderRadius: this.colliderRadius,
            colliderCenter: this.colliderCenter,
            gravity: this.gravity,
            airControl: this.airControl,
            sprintEnabled: false,
        };
        this.probe = (0, ProbeHelper_1.createProbe)({ static: true });
        this.lockAxisController = new LockAxisController_1.LockAxisController(this.settings);
        this.collisionsController = new CollisionsController_1.CollisionsController(this.settings, this.getSceneObject(), this.lockAxisController, this.logger, this.callbackWrapper);
        this.movementController = new MovementController_1.MovementController(this.settings, this.lockAxisController, this.getSceneObject(), this.collisionsController.characterCollider, this.colliderCenter);
        this.collisionsController.setDebugDrawEnabled(this.showCollider);
        this.probe.filter.onlyColliders = [
            this.collisionsController.characterCollider,
        ];
        this.transformUpdater = new TransformUpdater_1.TransformUpdater(this.getSceneObject(), this.movementController, this.collisionsController, this.logger, this.lockAxisController);
        this.movementController.setInitialScale(this.transformUpdater.getInitialScale());
    }
};
exports.CharacterController = CharacterController;
exports.CharacterController = CharacterController = __decorate([
    component
], CharacterController);
//# sourceMappingURL=Character%20Controller.js.map