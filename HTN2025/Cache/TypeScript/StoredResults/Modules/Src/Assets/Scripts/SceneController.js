"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.SceneController = void 0;
var __selfType = requireType("./SceneController");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const PlacementSettings_1 = require("Surface Placement.lspkg/Scripts/PlacementSettings");
const ButtonState_1 = require("GameController.lspkg/Scripts/ButtonState");
const GameController_1 = require("GameController.lspkg/GameController");
const SurfacePlacementController_1 = require("Surface Placement.lspkg/Scripts/SurfacePlacementController");
let SceneController = class SceneController extends BaseScriptComponent {
    onAwake() {
        this.camTrans = this.cameraObj.getTransform();
        this.transform = this.getSceneObject().getTransform();
        this.createEvent("OnStartEvent").bind(this.onStart.bind(this));
        this.objectVisuals.enabled = false;
        //HACK: EDITOR TEST:
        this.createEvent("TapEvent").bind(() => {
            this.JumpButtonDown(true);
            //this.KickButtonDown(true);
            //this.PunchButtonDown(true);
        });
    }
    onStart() {
        this.startPlacement();
        this.createEvent("UpdateEvent").bind(this.onUpdate.bind(this));
        this.gameController.scanForControllers();
        //register button presses
        this.gameController.onButtonStateChanged(ButtonState_1.ButtonStateKey.a, this.JumpButtonDown.bind(this));
        this.gameController.onButtonStateChanged(ButtonState_1.ButtonStateKey.x, this.PunchButtonDown.bind(this));
        this.gameController.onButtonStateChanged(ButtonState_1.ButtonStateKey.b, this.KickButtonDown.bind(this));
        this.gameController.onButtonStateChanged(ButtonState_1.ButtonStateKey.y, this.sendRumble.bind(this));
    }
    sendRumble(pressed) {
        if (pressed) {
            this.gameController.sendRumble(20, 10);
        }
    }
    JumpButtonDown(pressed) {
        if (pressed) {
            this.animationController.playJumpAnimation();
        }
    }
    PunchButtonDown(pressed) {
        if (pressed) {
            this.animationController.playPunchAnimation();
        }
    }
    KickButtonDown(pressed) {
        if (pressed) {
            this.animationController.playKickAnimation();
        }
    }
    startPlacement() {
        this.objectVisuals.enabled = false;
        var placementSettings = new PlacementSettings_1.PlacementSettings(PlacementSettings_1.PlacementMode.HORIZONTAL);
        if (this.placementSettingMode == 0) {
            placementSettings = new PlacementSettings_1.PlacementSettings(PlacementSettings_1.PlacementMode.NEAR_SURFACE, true, // use surface adjustment widget
            vec3.zero(), // offset in cm of widget from surface center
            this.onSliderUpdated.bind(this) // callback from widget height changes
            );
        }
        this.surfacePlacement.startSurfacePlacement(placementSettings, (pos, rot) => {
            this.onSurfaceDetected(pos, rot);
        });
    }
    resetPlacement() {
        this.surfacePlacement.stopSurfacePlacement();
        this.startPlacement();
    }
    onSliderUpdated(pos) {
        this.transform.setWorldPosition(pos);
    }
    onSurfaceDetected(pos, rot) {
        this.objectVisuals.enabled = true;
        this.transform.setWorldPosition(pos);
        this.transform.setWorldRotation(rot);
        this.characterController.setPosition(pos);
        this.characterController.setInputType(global.deviceInfoSystem.isEditor() ? 1 : 0);
    }
    onUpdate() {
        var buttonState = this.gameController.getButtonState();
        if (!buttonState) {
            return;
        }
        //set button states in update instead of on value value changed since vertical and horizontal would come in at different times
        var moveSpeed = new vec2(Math.abs(buttonState.lx), Math.abs(buttonState.ly)).distance(vec2.zero()); //0 - 1
        var joystickMoveDirection = new vec3(buttonState.lx, 0, buttonState.ly).normalize();
        // Convert joystick input into world space relative to camera’s facing direction
        var moveDir = this.camTrans
            .getWorldTransform()
            .multiplyDirection(joystickMoveDirection)
            .normalize();
        if (moveSpeed < 0.15) {
            moveSpeed = 0;
            moveDir = vec3.zero();
        }
        this.characterController.move(moveDir);
        this.characterController.setTargetSpeedModifier(moveSpeed);
    }
    __initialize() {
        super.__initialize();
        this.transform = null;
        this.camTrans = null;
        this.surfacePlacement = SurfacePlacementController_1.SurfacePlacementController.getInstance();
        this.gameController = GameController_1.GameController.getInstance();
    }
};
exports.SceneController = SceneController;
exports.SceneController = SceneController = __decorate([
    component
], SceneController);
//# sourceMappingURL=SceneController.js.map