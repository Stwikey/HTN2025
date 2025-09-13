"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.HandHintsController = void 0;
var __selfType = requireType("./HandHintsController");
function component(target) { target.getTypeName = function () { return __selfType; }; }
let HandHintsController = class HandHintsController extends BaseScriptComponent {
    onAwake() {
        this.animationPlayer =
            this.getSceneObject().getComponent("AnimationPlayer");
        this.resetPlayer();
        this.trans = this.getSceneObject().getTransform();
        this.createEvent("UpdateEvent").bind(this.onUpdate.bind(this));
        this.enableHint(this.getSceneObject().getParent().getTransform());
        this.playHandTouchSurface();
    }
    onUpdate() {
        this.trans.setWorldScale(vec3.lerp(this.trans.getWorldScale(), this.desiredScale, getDeltaTime() * 6));
        if (this.anchorTrans != null) {
            this.trans.setWorldPosition(this.anchorTrans.getWorldPosition());
            this.trans.setWorldRotation(this.anchorTrans.getWorldRotation());
            this.trans.setLocalScale(this.anchorTrans.getLocalScale());
        }
    }
    resetPlayer() {
        this.mobileDeviceObject.enabled = false;
        for (var i = 0; i < this.animationPlayer.clips.length; i++) {
            this.animationPlayer.clips[i].disabled = true;
        }
    }
    enableHint(anchor) {
        this.desiredScale = vec3.one();
        this.anchorTrans = anchor;
    }
    disableHint() {
        this.desiredScale = vec3.zero();
        this.trans.setWorldScale(vec3.zero());
        this.anchorTrans = null;
    }
    playMobileTap() {
        this.resetPlayer();
        this.mobileDeviceObject.enabled = true;
        this.animationPlayer.getClip("Controller_Tap").disabled = false;
    }
    playFarPinch() {
        this.resetPlayer();
        this.animationPlayer.getClip("Pinch_Far").disabled = false;
    }
    playHandTouchSurface() {
        this.resetPlayer();
        this.animationPlayer.getClip("Palm_Touch_Near").disabled = false;
    }
    playFarDrag() {
        this.resetPlayer();
        this.animationPlayer.getClip("Pinch_Move_X").disabled = false;
    }
    __initialize() {
        super.__initialize();
        this.desiredScale = vec3.zero();
        this.trans = null;
        this.anchorTrans = null;
        this.animationPlayer = null;
    }
};
exports.HandHintsController = HandHintsController;
exports.HandHintsController = HandHintsController = __decorate([
    component
], HandHintsController);
//# sourceMappingURL=HandHintsController.js.map