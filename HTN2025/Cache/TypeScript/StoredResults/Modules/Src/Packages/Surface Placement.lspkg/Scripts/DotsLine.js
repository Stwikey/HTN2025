"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.DotsLine = void 0;
var __selfType = requireType("./DotsLine");
function component(target) { target.getTypeName = function () { return __selfType; }; }
let DotsLine = class DotsLine extends BaseScriptComponent {
    onAwake() {
        this.lineStartTrans = this.getSceneObject().getTransform();
        this.lineEndTrans = this.lineEndObj.getTransform();
        this.createEvent("UpdateEvent").bind(this.onUpdate.bind(this));
    }
    onUpdate() {
        var distance = this.lineStartTrans
            .getWorldPosition()
            .distance(this.lineEndTrans.getWorldPosition());
        this.rend.mainPass.Length = MathUtils.remap(distance, 0, 150, 0, 25);
    }
    __initialize() {
        super.__initialize();
        this.lineStartTrans = null;
        this.lineEndTrans = null;
        this.rend = this.getSceneObject().getComponent("Component.RenderMeshVisual");
    }
};
exports.DotsLine = DotsLine;
exports.DotsLine = DotsLine = __decorate([
    component
], DotsLine);
//# sourceMappingURL=DotsLine.js.map