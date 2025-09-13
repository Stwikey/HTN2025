"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.SurfacePlacementController = void 0;
const PlacementSettings_1 = require("./PlacementSettings");
const HandHintsController_1 = require("./HandHintsController");
const Singleton_1 = require("../Decorators/Singleton");
const SurfaceDetector_1 = require("./SurfaceDetector");
const TableTop_1 = require("./TableTop");
// public static getInstance: () => SIKLogLevelProvider
const CALIBRATE_AUDIOTRACK = requireAsset("../Sounds/CalibrateSnap.mp3");
const HANDHINTS_PREFAB = requireAsset("../Prefabs/HandHints.prefab");
const PLACEMENT_MODE_PREFABS = [
    requireAsset("../Prefabs/HorizontalPlacement.prefab"),
    requireAsset("../Prefabs/VerticalPlacement.prefab"),
    requireAsset("../Prefabs/TableTopPlacement.prefab"),
];
let SurfacePlacementController = class SurfacePlacementController {
    constructor() {
        this.handHindsController = null;
        this.currDetector = null;
        this.sceneObject = null;
        this.sceneObject = global.scene.createSceneObject("SurfacePlacementController");
        this.init();
    }
    init() {
        let audioComponent = this.sceneObject.createComponent("AudioComponent");
        audioComponent.audioTrack = CALIBRATE_AUDIOTRACK;
        var handHintsObj = HANDHINTS_PREFAB.instantiate(this.sceneObject);
        this.handHindsController = handHintsObj.getComponent(HandHintsController_1.HandHintsController.getTypeName());
        this.handHindsController.disableHint();
    }
    startSurfacePlacement(settings, callback) {
        if (this.currDetector != null) {
            //in case mode is changed remove current detector
            this.stopSurfacePlacement();
        }
        //create new one and init
        var detectorObj = PLACEMENT_MODE_PREFABS[settings.placementMode].instantiate(this.sceneObject);
        this.currDetector = detectorObj
            .getComponents("ScriptComponent")
            .find((s) => s instanceof SurfaceDetector_1.SurfaceDetector);
        if (settings.placementMode == PlacementSettings_1.PlacementMode.NEAR_SURFACE) {
            var tableTop = detectorObj.getComponent(TableTop_1.TableTop.getTypeName());
            tableTop.setOptions(settings);
        }
        this.currDetector.init(this.handHindsController);
        //start surface placement on desired mode
        this.currDetector.startSurfaceCalibration(callback);
    }
    stopSurfacePlacement() {
        if (this.currDetector) {
            this.handHindsController.disableHint();
            this.currDetector.onDestroy();
            this.currDetector.getSceneObject().destroy();
            this.currDetector = null;
        }
    }
};
exports.SurfacePlacementController = SurfacePlacementController;
exports.SurfacePlacementController = SurfacePlacementController = __decorate([
    Singleton_1.Singleton
], SurfacePlacementController);
//# sourceMappingURL=SurfacePlacementController.js.map