"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.SurfaceDetector = void 0;
var __selfType = requireType("./SurfaceDetector");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const animate_1 = require("SpectaclesInteractionKit.lspkg/Utils/animate");
const SIK_1 = require("SpectaclesInteractionKit.lspkg/SIK");
const WorldCameraFinderProvider_1 = require("SpectaclesInteractionKit.lspkg/Providers/CameraProvider/WorldCameraFinderProvider");
let SurfaceDetector = class SurfaceDetector extends BaseScriptComponent {
    onAwake() {
        this.visualParentTrans.setLocalScale(vec3.zero());
        this.iconTrans = this.circleAnim.getSceneObject().getTransform();
    }
    init(handHints) {
        this.handHintController = handHints;
        this.onMobileConnnectionStateChange(this.isMobileConnected());
    }
    onDestroy() {
        print("SurfaceDetector destroyed");
        if (this.hitTestSession != null) {
            this.hitTestSession.stop();
            this.hitTestSession = null;
        }
        if (this.updateEvent != null) {
            this.removeEvent(this.updateEvent);
            this.updateEvent = null;
        }
        if (this.animCancel)
            this.animCancel.cancel();
    }
    startSurfaceCalibration(callback) {
        this.isCalibrationRunning = true;
        this.circleAnim.reset();
        this.animateVisuals(true, null);
        this.onCompleteCallback = callback;
        this.updateEvent = this.createEvent("UpdateEvent");
        this.updateEvent.bind(this.update.bind(this));
    }
    onHoverEnter() {
        //change instruction text
        if (this.confirmText != null) {
            this.confirmText.text = "Drag to Move";
        }
    }
    onHoverExit() {
        //change instruction text
        if (this.confirmText != null && this.isCalibrationRunning) {
            this.confirmText.text = this.isMobileConnected()
                ? "Tap to Confirm"
                : "Pinch to Confirm";
        }
    }
    onInteractionCanceled() { }
    onInteractionStart() { }
    onInteractionEnd() { }
    isLookingAtCalibrationIcon() {
        var camComp = this.cameraTransform.getSceneObject().getComponent("Camera");
        return camComp.isSphereVisible(this.iconTrans.getWorldPosition(), 10);
    }
    animateVisuals(animateIn, callback) {
        if (this.animCancel)
            this.animCancel.cancel();
        var start = animateIn ? vec3.zero() : vec3.one();
        var end = animateIn ? vec3.one() : vec3.zero();
        const easingType = animateIn
            ? "ease-out-cubic"
            : "ease-in-cubic";
        (0, animate_1.default)({
            easing: easingType,
            duration: 0.5,
            update: (t) => {
                this.visualParentTrans.setLocalScale(vec3.lerp(start, end, t));
            },
            ended: callback,
            cancelSet: this.animCancel,
        });
    }
    startHitTestSession() {
        try {
            this.worldQueryModule =
                require("LensStudio:WorldQueryModule");
            const options = HitTestSessionOptions.create();
            options.filter = true;
            this.hitTestSession =
                this.worldQueryModule.createHitTestSessionWithOptions(options);
            this.hitTestSession.start();
        }
        catch (e) {
            print("Hit test error: " + e);
        }
    }
    onMobileConnnectionStateChange(isConnected) {
        //change instruction text
        if (this.confirmText != null) {
            this.confirmText.text = isConnected
                ? "Tap to Confirm"
                : "Pinch to Confirm";
        }
    }
    isMobileConnected() {
        return SIK_1.SIK.MobileInputData.isAvailable();
    }
    update() {
        var isMobileAvailable = SIK_1.SIK.MobileInputData.isAvailable();
        if (this.mobileConnected != isMobileAvailable) {
            this.mobileConnected = isMobileAvailable;
            this.onMobileConnnectionStateChange(this.mobileConnected);
        }
    }
    onCalibrationComplete(callback) {
        this.isCalibrationRunning = false;
        print("Calibration complete..");
        //remove events
        this.removeEvent(this.updateEvent);
        this.updateEvent = null;
        //delay stop hit test session
        var delay = this.createEvent("DelayedCallbackEvent");
        delay.bind(() => {
            if (this.hitTestSession != null) {
                print("Stopping hit test session...");
                this.hitTestSession.stop();
                this.hitTestSession = null;
            }
        });
        delay.reset(0.1);
        //play audio
        this.getSceneObject()
            .getParent()
            .getComponent("Component.AudioComponent")
            .play(1);
        //animate circle
        this.onAnimCompleteCallback = callback;
        this.circleAnim.animateCircleIn(() => {
            this.animateVisuals(false, this.onAnimCompleteCallback());
        });
    }
    __initialize() {
        super.__initialize();
        this.cameraTransform = WorldCameraFinderProvider_1.default.getInstance().getTransform();
        this.hitTestSession = null;
        this.onCompleteCallback = null;
        this.onAnimCompleteCallback = null;
        this.trans = this.getSceneObject().getTransform();
        this.updateEvent = null;
        this.worldQueryModule = null;
        this.visualParentTrans = this.getSceneObject().getChild(0).getTransform();
        this.animCancel = new animate_1.CancelSet();
        this.iconTrans = null;
        this.mobileConnected = false;
        this.isCalibrationRunning = false;
        this.handHintController = null;
    }
};
exports.SurfaceDetector = SurfaceDetector;
exports.SurfaceDetector = SurfaceDetector = __decorate([
    component
], SurfaceDetector);
//# sourceMappingURL=SurfaceDetector.js.map