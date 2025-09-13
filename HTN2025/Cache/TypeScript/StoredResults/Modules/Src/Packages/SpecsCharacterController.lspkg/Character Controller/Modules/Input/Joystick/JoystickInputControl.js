"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports._Void = exports.JoystickInputControl = exports.JoystickInputControlConfig = exports.JoystickPositionTypeConfig = void 0;
var __selfType = requireType("./JoystickInputControl");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const JoystickComponentConfig_1 = require("../../../Resources/Input/JoystickComponent.lsc/Scripts/JoystickComponentConfig");
const JoystickComponent_1 = require("../../../Resources/Input/JoystickComponent.lsc/Scripts/JoystickComponent");
const UiCameraProvider_1 = require("../UiCamera/UiCameraProvider");
var JoystickPositionTypeConfig;
(function (JoystickPositionTypeConfig) {
    JoystickPositionTypeConfig[JoystickPositionTypeConfig["Free"] = 0] = "Free";
    JoystickPositionTypeConfig[JoystickPositionTypeConfig["Left"] = 1] = "Left";
    JoystickPositionTypeConfig[JoystickPositionTypeConfig["Right"] = 2] = "Right";
    JoystickPositionTypeConfig[JoystickPositionTypeConfig["Custom"] = 3] = "Custom";
})(JoystickPositionTypeConfig || (exports.JoystickPositionTypeConfig = JoystickPositionTypeConfig = {}));
class JoystickInputControlConfig {
    constructor() {
        this.joystickPositionTypeConfig = 0;
        this.sensitivity = 0.96;
        this.deadZone = 0.1;
        this.renderOrder = 200;
    }
}
exports.JoystickInputControlConfig = JoystickInputControlConfig;
class JoystickInputControl {
    constructor(joystickInputControlConfig, trackingCameraSO, movablePlane = vec3.up()) {
        this.joystickInputControlConfig = joystickInputControlConfig;
        this.trackingCameraSO = trackingCameraSO;
        this.movablePlane = movablePlane;
        const positionConfig = joystickInputControlConfig.joystickPositionTypeConfig === JoystickPositionTypeConfig.Free ?
            JoystickComponentConfig_1.JoystickComponentPositionConfig.Free : JoystickComponentConfig_1.JoystickComponentPositionConfig.Fixed;
        const joystickConfig = {
            renderOrder: this.joystickInputControlConfig.renderOrder,
            position: positionConfig,
            deadZone: this.joystickInputControlConfig.deadZone,
            sensitivity: this.sensitivity,
            interactiveArea: this.joystickInputControlConfig.interactiveArea,
        };
        const joystickParent = this.getJoystickParent();
        const joystickRoot = global.scene.createSceneObject("Joystick Root");
        joystickRoot.setParent(joystickParent);
        joystickRoot.layer = joystickParent.layer;
        joystickRoot.createComponent("ScreenTransform");
        this.joystickComponent = joystickRoot.createComponent(JoystickComponent_1.JoystickComponent.getTypeName());
        this.joystickComponent.setConfig(joystickConfig);
    }
    enable() {
        if (!isNull(this.joystickComponent)) {
            this.joystickComponent.enable();
        }
    }
    disable() {
        if (!isNull(this.joystickComponent)) {
            this.joystickComponent.disable();
        }
    }
    onDestroy() {
        if (!isNull(this.joystickComponent)) {
            this.joystickComponent.getSceneObject()
                .destroy();
        }
        if (!isNull(this.uiCameraProvider)) {
            this.uiCameraProvider.getSceneObject()
                .destroy();
        }
    }
    getDirection() {
        if (!this.isActive()) {
            return null;
        }
        const joystickDirection = this.joystickComponent.getDirection();
        const cameraTransform = this.trackingCameraSO.getTransform();
        const rightDirection = cameraTransform.right.projectOnPlane(this.movablePlane)
            .normalize();
        const rotation = quat.lookAt(this.movablePlane, rightDirection.cross(this.movablePlane));
        const projectedDirection = rotation.multiplyVec3(new vec3(joystickDirection.x, joystickDirection.y, 0));
        return projectedDirection.uniformScale(-Math.sqrt(joystickDirection.length));
    }
    get sensitivity() {
        return this.joystickInputControlConfig.sensitivity;
    }
    getJoystickParent() {
        if (this.joystickInputControlConfig.joystickPositionTypeConfig === JoystickPositionTypeConfig.Custom) {
            return this.joystickInputControlConfig.joystickParent;
        }
        this.uiCameraProvider = UiCameraProvider_1.UiCameraProvider.instance;
        const uiCameraLayout = this.uiCameraProvider.uiCameraLayout;
        switch (this.joystickInputControlConfig.joystickPositionTypeConfig) {
            case JoystickPositionTypeConfig.Left:
                return uiCameraLayout.leftInputControlSpace;
            case JoystickPositionTypeConfig.Right:
                return uiCameraLayout.rightInputControlSpace;
            case JoystickPositionTypeConfig.Free:
                return uiCameraLayout.leftInputControlSpace;
        }
    }
    isActive() {
        return !isNull(this.joystickComponent)
            && !isNull(this.joystickComponent.getSceneObject())
            && this.joystickComponent.getSceneObject().enabled
            && this.joystickComponent.getSceneObject().isEnabledInHierarchy;
    }
}
exports.JoystickInputControl = JoystickInputControl;
let _Void = class _Void extends BaseScriptComponent {
};
exports._Void = _Void;
exports._Void = _Void = __decorate([
    component
], _Void);
//# sourceMappingURL=JoystickInputControl.js.map