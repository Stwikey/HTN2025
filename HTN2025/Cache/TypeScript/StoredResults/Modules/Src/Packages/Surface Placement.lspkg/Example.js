"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Example = void 0;
var __selfType = requireType("./Example");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const PlacementSettings_1 = require("./Scripts/PlacementSettings");
const SurfacePlacementController_1 = require("./Scripts/SurfacePlacementController");
let Example = class Example extends BaseScriptComponent {
    onAwake() {
        this.transform = this.getSceneObject().getTransform();
        this.createEvent("OnStartEvent").bind(this.onStart.bind(this));
    }
    onStart() {
        this.objectVisuals.enabled = false;
        if (this.autoStart) {
            this.startPlacement();
        }
    }
    startPlacement() {
        this.objectVisuals.enabled = false;
        let placementSettings;
        switch (this.placementSettingMode) {
            case 0: // Near Surface
                placementSettings = new PlacementSettings_1.PlacementSettings(PlacementSettings_1.PlacementMode.NEAR_SURFACE, true, // use surface adjustment widget
                new vec3(10, 10, 0), // offset in cm of widget from surface center
                this.onSliderUpdated.bind(this) // callback from widget height changes
                );
                break;
            case 1: // Horizontal
                placementSettings = new PlacementSettings_1.PlacementSettings(PlacementSettings_1.PlacementMode.HORIZONTAL);
                break;
            case 2: // Vertical
                placementSettings = new PlacementSettings_1.PlacementSettings(PlacementSettings_1.PlacementMode.VERTICAL);
                break;
            default:
                placementSettings = new PlacementSettings_1.PlacementSettings(PlacementSettings_1.PlacementMode.NEAR_SURFACE);
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
    }
    __initialize() {
        super.__initialize();
        this.transform = null;
        this.surfacePlacement = SurfacePlacementController_1.SurfacePlacementController.getInstance();
    }
};
exports.Example = Example;
exports.Example = Example = __decorate([
    component
], Example);
//# sourceMappingURL=Example.js.map