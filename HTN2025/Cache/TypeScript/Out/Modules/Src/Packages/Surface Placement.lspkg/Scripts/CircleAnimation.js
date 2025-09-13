"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.CircleAnimation = void 0;
var __selfType = requireType("./CircleAnimation");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const animate_1 = require("SpectaclesInteractionKit.lspkg/Utils/animate");
const START_SIZE = 0;
const END_SIZE = 1;
let CircleAnimation = class CircleAnimation extends BaseScriptComponent {
    setLoadingAmount(amount) {
        this.rend.mainPass.InnerCircleMask = amount;
        if (amount > 0.1) {
            this.rend.mainPass.AnimationSwitch = false;
        }
    }
    enableScanAnimation(enabled) {
        this.rend.mainPass.AnimationSwitch = enabled;
    }
    setCircleColor(color) {
        this.rend.mainPass.dotsColor = color;
        this.rend.mainPass.circleColor = color;
    }
    setLoadingColor(isWhite) {
        this.rend.mainPass.whiteColor = isWhite
            ? new vec4(1, 1, 1, 1)
            : new vec4(1, 1, 0, 1);
    }
    reset() {
        this.rend.mainPass.AnimationSwitch = true;
        this.rend.mainPass.Thickness = START_SIZE;
    }
    animateCircleOut(callback) {
        if (this.completeCancel)
            this.completeCancel.cancel();
        (0, animate_1.default)({
            easing: "ease-out-cubic",
            duration: 0.5,
            update: (t) => {
                this.rend.mainPass.Amount = 1;
                this.rend.mainPass.Thickness = MathUtils.lerp(START_SIZE, END_SIZE, t);
            },
            ended: callback,
            cancelSet: this.completeCancel,
        });
    }
    animateCircleIn(callback) {
        if (this.completeCancel)
            this.completeCancel.cancel();
        (0, animate_1.default)({
            easing: "ease-in-cubic",
            duration: 0.5,
            update: (t) => {
                this.rend.mainPass.Amount = 1;
                this.rend.mainPass.Thickness = MathUtils.lerp(END_SIZE, START_SIZE, t);
            },
            ended: callback,
            cancelSet: this.completeCancel,
        });
    }
    animateCircleFull(callback) {
        if (this.completeCancel)
            this.completeCancel.cancel();
        (0, animate_1.default)({
            easing: "linear",
            duration: 0.5,
            update: (t) => {
                this.rend.mainPass.Amount = 1;
                this.rend.mainPass.Thickness = this.PingPong(START_SIZE, END_SIZE, t);
            },
            ended: callback,
            cancelSet: this.completeCancel,
        });
    }
    PingPong(min, max, t) {
        const range = max - min;
        const scaledT = t * Math.PI;
        return min + Math.sin(scaledT) * range;
    }
    __initialize() {
        super.__initialize();
        this.rend = this.getSceneObject().getComponent("Component.RenderMeshVisual");
        this.completeCancel = new animate_1.CancelSet();
    }
};
exports.CircleAnimation = CircleAnimation;
exports.CircleAnimation = CircleAnimation = __decorate([
    component
], CircleAnimation);
//# sourceMappingURL=CircleAnimation.js.map