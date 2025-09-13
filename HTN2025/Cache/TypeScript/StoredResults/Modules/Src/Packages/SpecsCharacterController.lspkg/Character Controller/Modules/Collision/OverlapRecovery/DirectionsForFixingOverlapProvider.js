"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DirectionsForFixingOverlapProvider = void 0;
const ShapeHelper_1 = require("../CollisionHelpers/ShapeHelper");
const Utils_1 = require("../../Utils/Utils");
class DirectionsForFixingOverlapProvider {
    static getDirections(characterPosition, aabb) {
        const worldTransform = aabb.transform.getWorldTransform();
        const invertedTransform = aabb.transform.getInvertedWorldTransform();
        const localCharacterPosition = invertedTransform.multiplyPoint(characterPosition);
        const localDirections = this.getLocalDirectionsForShape(localCharacterPosition, aabb.collider, aabb.shapeType);
        return localDirections.map((direction) => worldTransform.multiplyDirection(direction));
    }
    static getLocalDirectionsForShape(localCharacterPosition, collider, colliderShape) {
        switch (colliderShape) {
            case ShapeHelper_1.ShapeType.Sphere:
                return this.getSphereLocalDirections(localCharacterPosition);
            case ShapeHelper_1.ShapeType.Box:
                return this.getBoxLocalDirections();
            case ShapeHelper_1.ShapeType.Cylinder:
            case ShapeHelper_1.ShapeType.Cone:
                return this.getCylinderAndConeLocalDirections(localCharacterPosition, collider);
            case ShapeHelper_1.ShapeType.Capsule:
                return this.getCapsuleDirections(localCharacterPosition, collider);
            case ShapeHelper_1.ShapeType.Mesh:
                return this.getMeshDirections(localCharacterPosition, collider);
            default:
                return [];
        }
    }
    static getSphereLocalDirections(pos) {
        return [
            pos, // sphere center is in 0,0,0
        ];
    }
    static getBoxLocalDirections() {
        return this.boxLocalDirections;
    }
    static getCylinderAndConeLocalDirections(pos, collider) {
        const shape = collider.shape;
        const pushToSideDirection = Utils_1.Utils.copyVec3(pos);
        const axis = (0, ShapeHelper_1.getAxis)(shape.axis);
        pushToSideDirection[axis] = 0;
        const pushAlongAxisPositiveDirection = (0, ShapeHelper_1.getAxisDirection)(shape.axis);
        const pushAlongAxisNegativeDirection = (0, ShapeHelper_1.getAxisDirection)(shape.axis)
            .uniformScale(-1);
        const pushAlongTangent1 = pushToSideDirection.cross(pushAlongAxisPositiveDirection);
        const pushAlongTangent2 = pushAlongTangent1.uniformScale(-1);
        return [pushToSideDirection, pushAlongAxisPositiveDirection, pushAlongAxisNegativeDirection,
            pushAlongTangent1, pushAlongTangent2];
    }
    static getCapsuleDirections(pos, collider) {
        const shape = collider.shape;
        const length = shape.length;
        const axis = (0, ShapeHelper_1.getAxis)(shape.axis);
        const direction1 = Utils_1.Utils.copyVec3(pos);
        direction1[axis] -= -length / 2;
        const direction2 = Utils_1.Utils.copyVec3(pos);
        direction2[axis] -= length / 2;
        const direction3 = Utils_1.Utils.copyVec3(pos);
        direction3[axis] = 0;
        return [direction1, direction2, direction3];
    }
    static getMeshDirections(localPosition, collider) {
        const shape = collider.shape;
        if (shape.mesh) {
            const aabbMin = shape.mesh.aabbMin;
            const aabbMax = shape.mesh.aabbMax;
            const center = aabbMax.add(aabbMin)
                .uniformScale(0.5);
            const direction = localPosition.sub(center);
            direction.y = 0;
            return [direction];
        }
        else {
            return [];
        }
    }
}
exports.DirectionsForFixingOverlapProvider = DirectionsForFixingOverlapProvider;
DirectionsForFixingOverlapProvider.boxLocalDirections = [vec3.left(), vec3.right(), vec3.forward(), vec3.back(),
    vec3.up(), vec3.down()];
//# sourceMappingURL=DirectionsForFixingOverlapProvider.js.map