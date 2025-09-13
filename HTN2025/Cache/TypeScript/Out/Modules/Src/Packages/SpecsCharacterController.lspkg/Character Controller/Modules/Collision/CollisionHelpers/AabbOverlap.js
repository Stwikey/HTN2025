"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.AabbOverlap = void 0;
const Utils_1 = require("../../Utils/Utils");
/**
 * Checks if two aabb overlap.
 */
class AabbOverlap {
    static isAabbOverlap(aabb1, aabb2) {
        const checkAxis = (axis, aabb1, aabb2) => {
            return this.isPointInsideSegment(aabb1.aabbMin[axis], aabb1.aabbMax[axis], aabb2.aabbMin[axis], true, false)
                || this.isPointInsideSegment(aabb1.aabbMin[axis], aabb1.aabbMax[axis], aabb2.aabbMax[axis], false, true)
                || this.isPointInsideSegment(aabb2.aabbMin[axis], aabb2.aabbMax[axis], aabb1.aabbMin[axis], true, false)
                || this.isPointInsideSegment(aabb2.aabbMin[axis], aabb2.aabbMax[axis], aabb1.aabbMax[axis], false, true);
        };
        return aabb1 && aabb2 && aabb1.aabbMin && aabb2.aabbMin && aabb1.aabbMax && aabb2.aabbMax
            && checkAxis("x", aabb1, aabb2) && checkAxis("y", aabb1, aabb2) && checkAxis("z", aabb1, aabb2);
    }
    static isPointInsideSegment(segmentMin, segmentMax, point, includeMin, includeMax) {
        return segmentMin < point && point < segmentMax
            || (includeMin && Math.abs(segmentMin - point) < Utils_1.Utils.EPS)
            || (includeMax && Math.abs(segmentMax - point) < Utils_1.Utils.EPS);
    }
}
exports.AabbOverlap = AabbOverlap;
//# sourceMappingURL=AabbOverlap.js.map