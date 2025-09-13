"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.SurfaceNormalHelper = void 0;
/**
 * SurfaceNormalHelper helps to find normal of surface, because normal returned by shape
 * cast may be incorrect in case character's controller intersects surface not in its bottom point
 */
class SurfaceNormalHelper {
    static getSurfaceData(rayCastController, collider, position, checkDistance, onReady) {
        rayCastController.probe.filter.onlyColliders = [collider];
        const start = position.add(new vec3(0, checkDistance, 0));
        const end = position.add(new vec3(0, -checkDistance, 0));
        rayCastController.rayCast(start, end, (hit) => {
            if (hit) {
                onReady({ normal: hit.normal, actualPos: hit.position });
            }
            else {
                onReady(null);
            }
        });
    }
}
exports.SurfaceNormalHelper = SurfaceNormalHelper;
//# sourceMappingURL=SurfaceNormalHelper.js.map