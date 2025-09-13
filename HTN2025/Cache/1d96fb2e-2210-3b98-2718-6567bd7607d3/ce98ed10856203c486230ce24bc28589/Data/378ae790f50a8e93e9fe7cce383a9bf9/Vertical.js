"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Vertical = void 0;
var __selfType = requireType("./Vertical");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const SurfaceDetector_1 = require("../Scripts/SurfaceDetector");
const SingleSurface_1 = require("../Scripts/SingleSurface");
// Set min and max hit distance to surfaces
const MAX_HIT_DISTANCE = 1000;
const MIN_HIT_DISTANCE = 50;
const STATE_SWITCH_THRESHOLD = 15; // Number of frames to switch default pose and surface pose (so it doesnt flicker)
const DEFAULT_SCREEN_DISTANCE = 200; // Distance in cm from camera to visual when no surface is hit
let Vertical = class Vertical extends SurfaceDetector_1.SurfaceDetector {
    onAwake() {
        super.onAwake();
        this.singleSurface = this.getSceneObject().getComponent(SingleSurface_1.SingleSurface.getTypeName());
    }
    init(handHints) {
        super.init(handHints);
        this.singleSurface.init(this.cameraTransform, this.trans, DEFAULT_SCREEN_DISTANCE);
    }
    onHoverEnter() {
        if (!this.isCalibrationRunning) {
            return;
        }
        super.onHoverEnter();
        this.circleAnim.setLoadingColor(false);
    }
    onHoverExit() {
        if (!this.isCalibrationRunning) {
            return;
        }
        super.onHoverExit();
        this.circleAnim.setLoadingColor(true);
    }
    onInteractionCanceled() {
        super.onInteractionCanceled();
        this.circleAnim.animateCircleIn(null);
        this.circleAnim.setLoadingColor(true);
        this.circleAnim.enableScanAnimation(true);
    }
    onInteractionStart() {
        if (!this.isCalibrationRunning) {
            return;
        }
        super.onInteractionStart();
        if (this.step1.enabled) {
            return;
        }
        this.circleAnim.animateCircleOut(null);
        this.circleAnim.enableScanAnimation(false);
        this.handHintController.disableHint();
    }
    onInteractionEnd() {
        if (!this.isCalibrationRunning) {
            return;
        }
        super.onInteractionEnd();
        if (this.hitTestSession != null &&
            this.step2.enabled &&
            super.isLookingAtCalibrationIcon()) {
            this.startCalibrationComplete();
        }
        else {
            this.onInteractionCanceled();
        }
    }
    playHandHint(isMobile) {
        if (isMobile) {
            this.handHintController.playMobileTap();
            this.hintAnchor
                .getTransform()
                .setLocalRotation(quat.fromEulerVec(new vec3(-30 * MathUtils.DegToRad, 0, 0)));
        }
        else {
            this.handHintController.playFarPinch();
            this.hintAnchor
                .getTransform()
                .setLocalRotation(quat.fromEulerVec(vec3.zero()));
        }
    }
    onMobileConnnectionStateChange(isConnected) {
        super.onMobileConnnectionStateChange(isConnected);
    }
    setCircleColor(isTracking) {
        var dotColor = isTracking ? new vec4(1, 1, 0, 1) : new vec4(1, 1, 1, 1);
        this.circleAnim.setCircleColor(dotColor);
        this.circleAnim.enableScanAnimation(isTracking);
    }
    startCalibrationComplete() {
        this.isCalibrationRunning = false;
        super.onCalibrationComplete(this.invokeCalibrationComplete.bind(this));
    }
    invokeCalibrationComplete() {
        this.onCompleteCallback(this.singleSurface.desiredPosition, this.singleSurface.desiredRotation);
    }
    startSurfaceCalibration(callback) {
        this.handHintController.disableHint();
        this.enableStep1(true);
        this.currSurfaceDetected = false;
        this.isCalibrationRunning = true;
        super.startSurfaceCalibration(callback);
        this.startHitTestSession();
        this.singleSurface.startCalibration();
        this.circleAnim.setLoadingColor(true);
    }
    update() {
        super.update();
        if (!this.isCalibrationRunning) {
            return;
        }
        if (this.singleSurface.hasFoundPlane()) {
            this.singleSurface.adjustPosition();
        }
        else {
            this.singleSurface.runHitTest(this.hitTestSession, MIN_HIT_DISTANCE, MAX_HIT_DISTANCE, this.onHitTestResult.bind(this));
        }
        this.singleSurface.interpolatePositionVisuals();
    }
    enableStep1(enabled) {
        this.step1.enabled = enabled;
        this.step2.enabled = !enabled;
        this.setCircleColor(!enabled);
        this.circleAnim.getSceneObject().getComponent("ColliderComponent").enabled =
            !enabled;
        if (!enabled) {
            this.handHintController.enableHint(this.hintAnchor.getTransform());
            this.playHandHint(this.isMobileConnected());
        }
        else {
            this.handHintController.disableHint();
        }
    }
    onHitTestResult(hitTestResult) {
        if (!this.isCalibrationRunning || this.singleSurface.hasFoundPlane()) {
            return;
        }
        let foundPosition = vec3.zero();
        let foundNormal = vec3.zero();
        if (hitTestResult != null) {
            foundPosition = hitTestResult.position;
            foundNormal = hitTestResult.normal;
        }
        this.updateCalibration(foundPosition, foundNormal);
    }
    updateCalibration(foundPosition, foundNormal) {
        var camPos = this.cameraTransform.getWorldPosition();
        this.singleSurface.desiredPosition = camPos.add(this.cameraTransform.forward.uniformScale(-DEFAULT_SCREEN_DISTANCE));
        this.singleSurface.desiredRotation = quat.lookAt(this.cameraTransform.forward, vec3.up());
        //check if vertical plane is being tracking
        var foundVerticalPlane = Math.abs(foundNormal.y) < 0.15 && Math.abs(foundNormal.y) > 0.0001;
        //check for state change
        if (this.currSurfaceDetected != foundVerticalPlane) {
            this.currStateCount = 0;
        }
        foundVerticalPlane ? this.currStateCount++ : this.currStateCount--;
        //set UI based on current state
        if (Math.abs(this.currStateCount) > STATE_SWITCH_THRESHOLD) {
            foundVerticalPlane = this.currStateCount > 0;
            if (foundVerticalPlane != this.step2.enabled) {
                this.enableStep1(!foundVerticalPlane);
            }
        }
        this.currSurfaceDetected = foundVerticalPlane;
        if (this.step2.enabled) {
            this.singleSurface.useDefaultHeight = false;
            this.singleSurface.desiredPosition = foundPosition;
            //make sure this is perpendicular to vec3.up()
            var projectedNormal = new vec3(foundNormal.x, 0.0, foundNormal.z);
            this.singleSurface.desiredRotation = quat.lookAt(projectedNormal.normalize(), vec3.up());
        }
        this.singleSurface.desiredRotation =
            this.singleSurface.desiredRotation.multiply(quat.fromEulerVec(new vec3(Math.PI / 2, 0, 0)));
    }
    __initialize() {
        super.__initialize();
        this.currStateCount = 0;
        this.currSurfaceDetected = false;
    }
};
exports.Vertical = Vertical;
exports.Vertical = Vertical = __decorate([
    component
], Vertical);
//# sourceMappingURL=Vertical.js.map