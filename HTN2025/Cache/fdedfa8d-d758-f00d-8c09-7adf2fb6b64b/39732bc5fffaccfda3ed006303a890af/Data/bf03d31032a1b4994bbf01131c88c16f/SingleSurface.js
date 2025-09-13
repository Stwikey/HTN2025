"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.SingleSurface = void 0;
var __selfType = requireType("./SingleSurface");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const SurfaceDetector_1 = require("./SurfaceDetector");
const DRAG_THRESHOLD = 11; // Minimum distance to start drag in CM
const SPEED = 8; // Interpolation speed
let SingleSurface = class SingleSurface extends BaseScriptComponent {
    onAwake() {
        this.createEvent("OnStartEvent").bind(this.onStart.bind(this));
        this.surfaceDetector = this.getSceneObject()
            .getComponents("ScriptComponent")
            .find((s) => s instanceof SurfaceDetector_1.SurfaceDetector);
    }
    onStart() {
        this.interactable.onHoverEnter.add((args) => {
            this.surfaceDetector.onHoverEnter();
        });
        this.interactable.onHoverExit.add((args) => {
            this.surfaceDetector.onHoverExit();
        });
        this.interactable.onTriggerStart.add((args) => {
            this.currInteractor = args.interactor;
            this.surfaceDetector.onInteractionStart();
            this.touchStartPosition = this.desiredPosition;
            this.isDragging = false;
        });
        this.interactable.onTriggerCanceled.add((args) => {
            args.interactor.clearCurrentInteractable();
            this.currInteractor = null;
            this.surfaceDetector.onInteractionCanceled();
        });
        this.interactable.onTriggerEnd.add((args) => {
            this.currInteractor = null;
            this.surfaceDetector.onInteractionEnd();
        });
    }
    init(camTrans, transform, screenDist) {
        this.cameraTransform = camTrans;
        this.trans = transform;
        this.screenDistance = screenDist;
        this.setDefaultPose();
    }
    startCalibration() {
        this.useDefaultHeight = true;
        this.lastGroundHeight = 0;
        this.desiredPosition = vec3.zero();
        this.desiredRotation = quat.quatIdentity();
    }
    setDefaultPose() {
        this.desiredPosition = this.cameraTransform
            .getWorldPosition()
            .add(this.cameraTransform.forward.uniformScale(-this.screenDistance));
        this.desiredRotation = this.cameraTransform.getWorldRotation();
        this.trans.setWorldPosition(this.desiredPosition);
        this.trans.setWorldRotation(this.desiredRotation);
    }
    hasFoundPlane() {
        return this.currInteractor != null;
    }
    runHitTest(hitTestSession, min, max, onHitTestResult) {
        var isCapturing = getDeltaTime() < 0.001;
        if (isCapturing) {
            return;
        }
        const rayDirection = this.cameraTransform.forward;
        const camPos = this.cameraTransform.getWorldPosition();
        const rayStart = camPos.add(rayDirection.uniformScale(-min));
        const rayEnd = camPos.add(rayDirection.uniformScale(-max));
        if (hitTestSession != null) {
            hitTestSession.hitTest(rayStart, rayEnd, (hitTestResult) => {
                onHitTestResult(hitTestResult);
            });
        }
    }
    adjustPosition() {
        //find point where camera forward intersects plane
        var planeNormal = this.desiredRotation.multiplyVec3(vec3.up().uniformScale(-1));
        var interactorDirection = this.currInteractor.endPoint
            .sub(this.currInteractor.startPoint)
            .normalize();
        var distanceToPlane = planeNormal.dot(this.desiredPosition.sub(this.currInteractor.startPoint)) / planeNormal.dot(interactorDirection);
        //what point on frozen plane is being pointed to
        var pointPos = this.currInteractor.startPoint.add(interactorDirection.uniformScale(distanceToPlane));
        var distance = pointPos.distance(this.touchStartPosition);
        if (distance > DRAG_THRESHOLD && !this.isDragging) {
            this.isDragging = true;
        }
        if (this.isDragging) {
            this.desiredPosition = pointPos;
        }
    }
    interpolatePositionVisuals() {
        this.trans.setWorldPosition(vec3.lerp(this.trans.getWorldPosition(), this.desiredPosition, getDeltaTime() * SPEED));
        this.trans.setWorldRotation(quat.slerp(this.trans.getWorldRotation(), this.desiredRotation, getDeltaTime() * SPEED));
    }
    __initialize() {
        super.__initialize();
        this.desiredPosition = vec3.zero();
        this.desiredRotation = quat.quatIdentity();
        this.useDefaultHeight = true;
        this.lastGroundHeight = 0;
        this.trans = null;
        this.cameraTransform = null;
        this.screenDistance = null;
        this.currInteractor = null;
        this.touchStartPosition = null;
        this.isDragging = false;
        this.surfaceDetector = null;
    }
};
exports.SingleSurface = SingleSurface;
exports.SingleSurface = SingleSurface = __decorate([
    component
], SingleSurface);
//# sourceMappingURL=SingleSurface.js.map