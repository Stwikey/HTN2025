"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var UiCameraProvider_1;
Object.defineProperty(exports, "__esModule", { value: true });
exports.UiCameraProvider = void 0;
var __selfType = requireType("./UiCameraProvider");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const UiCameraLayout_1 = require("./UiCameraLayout");
const Utils_1 = require("../../Utils/Utils");
var assignRenderLayerRecursively = Utils_1.Utils.assignRenderLayerRecursively;
let UiCameraProvider = UiCameraProvider_1 = class UiCameraProvider extends BaseScriptComponent {
    static get instance() {
        var _a;
        return (_a = UiCameraProvider_1._instance) !== null && _a !== void 0 ? _a : UiCameraProvider_1.instantiate();
    }
    addUiElement(uiElementSO, parent) {
        assignRenderLayerRecursively(uiElementSO, this.renderLayer);
        uiElementSO.setParent(parent);
    }
    static instantiate() {
        const scriptObject = global.scene.createSceneObject("UI Camera Provider");
        UiCameraProvider_1._instance = scriptObject.createComponent(UiCameraProvider_1.getTypeName());
        return UiCameraProvider_1._instance;
    }
    __initialize() {
        super.__initialize();
        this.renderLayer = LayerSet.makeUnique();
        UiCameraProvider_1._instance = this;
        const uiCameraObject = this.uiCameraPrefab.instantiate(this.getSceneObject());
        this.uiCameraLayout = uiCameraObject.getComponent(UiCameraLayout_1.UiCameraLayout.getTypeName());
        const uiCamera = this.uiCameraLayout.uiCamera;
        assignRenderLayerRecursively(this.getSceneObject(), this.renderLayer);
        uiCamera.renderLayer = this.renderLayer;
        uiCamera.renderTarget = global.scene.liveTarget;
    }
};
exports.UiCameraProvider = UiCameraProvider;
exports.UiCameraProvider = UiCameraProvider = UiCameraProvider_1 = __decorate([
    component
], UiCameraProvider);
//# sourceMappingURL=UiCameraProvider.js.map