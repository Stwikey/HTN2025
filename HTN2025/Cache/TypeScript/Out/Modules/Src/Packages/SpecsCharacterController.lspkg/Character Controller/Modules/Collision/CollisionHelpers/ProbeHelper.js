"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.getRayCastCollisionCharacterPosition = exports.createProbe = exports.RayCastController = void 0;
const SHAPE_ROTATION = quat.angleAxis(0, vec3.zero());
class RayCastController {
    constructor(shapeForShapeCast, callbackWrapper, probe) {
        this.shapeForShapeCast = shapeForShapeCast;
        this.callbackWrapper = callbackWrapper;
        this.probe = probe;
    }
    shapeCast(start, end, cb) {
        this.probe.shapeCast(this.shapeForShapeCast, start, SHAPE_ROTATION, end, SHAPE_ROTATION, this.callbackWrapper.wrap(cb));
    }
    shapeCastAll(start, end, cb) {
        this.probe.shapeCastAll(this.shapeForShapeCast, start, SHAPE_ROTATION, end, SHAPE_ROTATION, this.callbackWrapper.wrap((hits) => {
            cb(hits.sort((a, b) => a.t - b.t));
        }));
    }
    rayCast(start, end, cb) {
        this.probe.rayCast(start, end, this.callbackWrapper.wrap(cb));
    }
    rayCastAll(start, end, cb) {
        this.probe.rayCastAll(start, end, this.callbackWrapper.wrap((hits) => {
            cb(hits.sort((a, b) => a.t - b.t));
        }));
    }
}
exports.RayCastController = RayCastController;
function createProbe(config) {
    const probe = Physics.createGlobalProbe();
    probe.filter.includeDynamic = !!config.dynamic;
    probe.filter.includeStatic = !!config.static;
    probe.filter.includeIntangible = !!config.intangible;
    probe.filter.skipColliders = config.skip || [];
    return probe;
}
exports.createProbe = createProbe;
function getRayCastCollisionCharacterPosition(start, end, hit) {
    return end.sub(start)
        .uniformScale(hit.t)
        .add(start);
}
exports.getRayCastCollisionCharacterPosition = getRayCastCollisionCharacterPosition;
//# sourceMappingURL=ProbeHelper.js.map