"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.SurfaceSlider = void 0;
var __selfType = requireType("./SurfaceSlider");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const animate_1 = require("SpectaclesInteractionKit.lspkg/Utils/animate");
const Slider_1 = require("SpectaclesInteractionKit.lspkg/Components/UI/Slider/Slider");
const SLIDER_SCALE = 1;
const SLIDER_RANGE_CM = 4;
let SurfaceSlider = class SurfaceSlider extends BaseScriptComponent {
    onAwake() {
        this.trans = this.getSceneObject().getTransform();
        this.goundVisualTrans = this.groundVisualObj.getTransform();
        this.surfaceRenderer =
            this.groundVisualObj.getComponent("RenderMeshVisual");
        this.surfaceRenderer.mainPass.Alpha = this.desiredAlpha;
        this.createEvent("UpdateEvent").bind(this.onUpdate.bind(this));
    }
    init(offsetPos, onSliderUpdated) {
        this.sliderOffsetPos = offsetPos;
        this.onSliderUpdateEvent = onSliderUpdated;
    }
    onUpdate() {
        //interpolate surface alpha when slider touched
        this.surfaceRenderer.mainPass.Alpha = MathUtils.lerp(this.surfaceRenderer.mainPass.Alpha, this.desiredAlpha, getDeltaTime() * 4);
        //move ground based on slider position
        this.goundVisualTrans.setLocalPosition(this.groundVisualPos);
    }
    resetSlider() {
        this.trans.setLocalScale(vec3.zero());
        this.groundVisualPos.y = 0;
        this.goundVisualTrans.setLocalPosition(vec3.zero());
        this.sliderObj.getComponent(Slider_1.Slider.getTypeName()).currentValue = 0.5;
    }
    onSliderStart() {
        this.desiredAlpha = 1;
    }
    onSliderMoved(val) {
        var _a;
        this.groundVisualPos.y = MathUtils.remap(val, 0, 1, -SLIDER_RANGE_CM, SLIDER_RANGE_CM);
        (_a = this.onSliderUpdateEvent) === null || _a === void 0 ? void 0 : _a.call(this, this.goundVisualTrans.getWorldPosition());
    }
    onSliderEnd() {
        this.desiredAlpha = 0;
    }
    showSlider(calibrationTrans) {
        this.groundVisualPos = vec3.zero();
        var desiredPosition = calibrationTrans.getWorldPosition();
        var desiredRotation = calibrationTrans.getWorldRotation();
        if (global.deviceInfoSystem.isEditor()) {
            desiredRotation = desiredRotation.multiply(quat.fromEulerVec(new vec3(-Math.PI / 2, 0, 0)));
        }
        //set parent position and rotation
        this.trans.setWorldPosition(desiredPosition);
        this.trans.setWorldRotation(desiredRotation);
        //slider section scale in
        (0, animate_1.default)({
            easing: "ease-out-elastic",
            duration: 1,
            update: (t) => {
                this.trans.setWorldScale(vec3.lerp(vec3.zero(), vec3.one().uniformScale(SLIDER_SCALE), t));
            },
            ended: null,
            cancelSet: new animate_1.CancelSet(),
        });
        //slider offset position
        var sliderTrans = this.getSceneObject().getChild(0).getTransform();
        sliderTrans.setLocalPosition(this.sliderOffsetPos.uniformScale(SLIDER_SCALE));
    }
    __initialize() {
        super.__initialize();
        this.trans = null;
        this.goundVisualTrans = null;
        this.surfaceRenderer = null;
        this.desiredAlpha = 0;
        this.groundVisualPos = vec3.zero();
        this.sliderOffsetPos = vec3.zero();
        this.onSliderUpdateEvent = null;
    }
};
exports.SurfaceSlider = SurfaceSlider;
exports.SurfaceSlider = SurfaceSlider = __decorate([
    component
], SurfaceSlider);
//# sourceMappingURL=SurfaceSlider.js.map