"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Horizontal = void 0;
var __selfType = requireType("./Horizontal");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const SurfaceDetector_1 = require("../Scripts/SurfaceDetector");
const SingleSurface_1 = require("../Scripts/SingleSurface");
// Set min and max hit distance to surfaces
const MAX_HIT_DISTANCE = 500; //max is 1000
const MIN_HIT_DISTANCE = 20;
const DEFAULT_SCREEN_DISTANCE = 300; // Distance in cm from camera to visual when no surface is hit
const DEFAULT_GROUND_DISTANCE = 100;
let Horizontal = class Horizontal extends SurfaceDetector_1.SurfaceDetector {
    onAwake() {
        super.onAwake();
        this.singleSurface = this.getSceneObject().getComponent(SingleSurface_1.SingleSurface.getTypeName());
        this.screenTextTrans = this.screenTextObj.getTransform();
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
        this.circleAnim.setLoadingColor(true);
        this.circleAnim.animateCircleIn(null);
        this.circleAnim.enableScanAnimation(true);
    }
    onInteractionStart() {
        if (!this.isCalibrationRunning) {
            return;
        }
        super.onInteractionStart();
        this.circleAnim.animateCircleOut(null);
        this.circleAnim.enableScanAnimation(false);
        this.handHintController.disableHint();
    }
    onInteractionEnd() {
        if (!this.isCalibrationRunning) {
            return;
        }
        super.onInteractionEnd();
        if (this.hitTestSession != null && super.isLookingAtCalibrationIcon()) {
            this.startCalibrationComplete();
        }
        else {
            this.onInteractionCanceled();
        }
    }
    startSurfaceCalibration(callback) {
        this.handHintController.disableHint();
        super.startSurfaceCalibration(callback);
        this.startHitTestSession();
        this.singleSurface.startCalibration();
        this.circleAnim.setLoadingColor(true);
        this.circleAnim.enableScanAnimation(true);
        this.handHintController.enableHint(this.hintAnchor.getTransform());
        this.playHandHint(this.isMobileConnected());
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
        this.playHandHint(isConnected);
    }
    startCalibrationComplete() {
        super.onCalibrationComplete(this.invokeCalibrationComplete);
    }
    invokeCalibrationComplete() {
        this.onCompleteCallback(this.singleSurface.desiredPosition, this.singleSurface.desiredRotation);
    }
    update() {
        super.update();
        if (this.singleSurface.hasFoundPlane()) {
            this.singleSurface.adjustPosition();
        }
        else {
            this.singleSurface.runHitTest(this.hitTestSession, MIN_HIT_DISTANCE, MAX_HIT_DISTANCE, this.onHitTestResult.bind(this));
        }
        this.faceCamera();
        this.singleSurface.interpolatePositionVisuals();
        //keep screen text at same height as camera
        var worldTextPos = this.screenTextObj
            .getParent()
            .getTransform()
            .getWorldTransform()
            .multiplyPoint(new vec3(0, 8, 0));
        worldTextPos.y = this.cameraTransform.getWorldPosition().y;
        //make sure text stays above ground visual
        worldTextPos.y = Math.max(worldTextPos.y, this.singleSurface.lastGroundHeight + 50);
        this.screenTextTrans.setWorldPosition(worldTextPos);
    }
    onHitTestResult(hitTestResult) {
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
        //check if horizontal plane is being tracked
        var foundHorizontalPlane = foundNormal.y > 0.95;
        if (foundHorizontalPlane) {
            this.singleSurface.useDefaultHeight = false;
            this.singleSurface.lastGroundHeight = foundPosition.y;
            this.singleSurface.desiredPosition = foundPosition;
        }
        else {
            var worldCameraForward = this.cameraTransform.right
                .cross(vec3.up())
                .normalize();
            this.singleSurface.desiredPosition = camPos.add(worldCameraForward.uniformScale(-DEFAULT_SCREEN_DISTANCE));
            this.singleSurface.desiredPosition =
                this.singleSurface.desiredPosition.add(vec3.up().uniformScale(-DEFAULT_GROUND_DISTANCE));
        }
        var isGroundHeightLower = this.singleSurface.lastGroundHeight < foundPosition.y;
        this.singleSurface.desiredPosition.y =
            this.singleSurface.useDefaultHeight || !isGroundHeightLower
                ? this.singleSurface.desiredPosition.y
                : this.singleSurface.lastGroundHeight;
    }
    faceCamera() {
        var worldCameraForward = this.cameraTransform.right
            .cross(vec3.up())
            .normalize();
        this.singleSurface.desiredRotation = quat.lookAt(worldCameraForward, vec3.up());
    }
    __initialize() {
        super.__initialize();
        this.screenTextTrans = null;
    }
};
exports.Horizontal = Horizontal;
exports.Horizontal = Horizontal = __decorate([
    component
], Horizontal);
//# sourceMappingURL=Horizontal.js.map