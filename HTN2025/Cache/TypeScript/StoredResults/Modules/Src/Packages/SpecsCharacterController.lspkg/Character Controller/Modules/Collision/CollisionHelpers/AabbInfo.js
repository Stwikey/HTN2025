"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.AabbInfo = void 0;
/**
 * Aabb data of physic collider.
 */
class AabbInfo {
    constructor(collider, aabbMin, aabbMax, shapeType, transform, position) {
        this._size = null;
        this.collider = collider;
        this.aabbMin = aabbMin;
        this.aabbMax = aabbMax;
        this.shapeType = shapeType;
        this.transform = transform;
        this._position = position;
    }
    get position() {
        return this._position;
    }
    setPosition(pos) {
        const offset = pos.sub(this._position);
        const aabbMin = this.aabbMin.add(offset);
        const aabbMax = this.aabbMax.add(offset);
        return new AabbInfo(this.collider, aabbMin, aabbMax, this.shapeType, this.transform, pos);
    }
    get size() {
        if (isNull(this._size)) {
            this._size = this.aabbMax.sub(this.aabbMin).length;
        }
        return this._size;
    }
}
exports.AabbInfo = AabbInfo;
//# sourceMappingURL=AabbInfo.js.map