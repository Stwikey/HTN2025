"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.AabbBuilder = void 0;
const ShapeHelper_1 = require("./ShapeHelper");
const AabbInfo_1 = require("./AabbInfo");
/**
 * Collects aabb data of physic collider.
 */
class AabbBuilder {
    static buildAabb(position, collider, offset = 0) {
        const shapeType = (0, ShapeHelper_1.getShapeType)(collider);
        const transform = collider.getSceneObject()
            .getTransform();
        const initialPosition = transform.getWorldPosition();
        if (position) {
            transform.setWorldPosition(position);
        }
        const points = this.getShapePoints(shapeType, collider, transform);
        if (points) {
            const aabbMin = new vec3(points.map((point) => point.x)
                .reduce((a, b) => Math.min(a, b)), points.map((point) => point.y)
                .reduce((a, b) => Math.min(a, b)), points.map((point) => point.z)
                .reduce((a, b) => Math.min(a, b)));
            const aabbMax = new vec3(points.map((point) => point.x)
                .reduce((a, b) => Math.max(a, b)), points.map((point) => point.y)
                .reduce((a, b) => Math.max(a, b)), points.map((point) => point.z)
                .reduce((a, b) => Math.max(a, b)));
            const width = aabbMax.x - aabbMin.x;
            const height = aabbMax.y - aabbMin.y;
            const depth = aabbMax.z - aabbMin.z;
            aabbMin.x += width * offset;
            aabbMin.y += height * offset;
            aabbMin.z += depth * offset;
            aabbMax.x -= width * offset;
            aabbMax.y -= height * offset;
            aabbMax.z -= depth * offset;
            transform.setWorldPosition(initialPosition);
            return new AabbInfo_1.AabbInfo(collider, aabbMin, aabbMax, shapeType, transform, position);
        }
        else {
            transform.setWorldPosition(initialPosition);
            return null;
        }
    }
    static getShapePoints(shapeType, collider, transform) {
        const worldTransform = transform.getWorldTransform();
        const localAabb = this.getLocalAabb(shapeType, collider);
        if (localAabb) {
            return [
                worldTransform.multiplyPoint(new vec3(localAabb.aabbMin.x, localAabb.aabbMin.y, localAabb.aabbMin.z)),
                worldTransform.multiplyPoint(new vec3(localAabb.aabbMin.x, localAabb.aabbMin.y, localAabb.aabbMax.z)),
                worldTransform.multiplyPoint(new vec3(localAabb.aabbMin.x, localAabb.aabbMax.y, localAabb.aabbMin.z)),
                worldTransform.multiplyPoint(new vec3(localAabb.aabbMin.x, localAabb.aabbMax.y, localAabb.aabbMax.z)),
                worldTransform.multiplyPoint(new vec3(localAabb.aabbMax.x, localAabb.aabbMin.y, localAabb.aabbMin.z)),
                worldTransform.multiplyPoint(new vec3(localAabb.aabbMax.x, localAabb.aabbMin.y, localAabb.aabbMax.z)),
                worldTransform.multiplyPoint(new vec3(localAabb.aabbMax.x, localAabb.aabbMax.y, localAabb.aabbMin.z)),
                worldTransform.multiplyPoint(new vec3(localAabb.aabbMax.x, localAabb.aabbMax.y, localAabb.aabbMax.z)),
            ];
        }
        else {
            return null;
        }
    }
    static getLocalAabb(shapeType, collider) {
        if (collider.fitVisual) {
            const mesh = collider.getSceneObject()
                .getComponent("RenderMeshVisual");
            if (mesh) {
                const meshAabbMin = mesh.localAabbMin();
                const meshAabbMax = mesh.localAabbMax();
                return { aabbMin: meshAabbMin, aabbMax: meshAabbMax };
            }
        }
        const shape = collider.shape;
        switch (shapeType) {
            case ShapeHelper_1.ShapeType.Box:
                const boxShape = shape;
                const boxSize = boxShape.size;
                return { aabbMin: boxSize.uniformScale(-0.5), aabbMax: boxSize.uniformScale(0.5) };
            case ShapeHelper_1.ShapeType.Sphere:
                const sphereShape = shape;
                const sphereDiameter = sphereShape.radius * 2;
                const sphereSize = new vec3(sphereDiameter, sphereDiameter, sphereDiameter);
                return { aabbMin: sphereSize.uniformScale(-0.5), aabbMax: sphereSize.uniformScale(0.5) };
            case ShapeHelper_1.ShapeType.Capsule:
                const capsuleShape = shape;
                const capsuleDiameter = capsuleShape.radius * 2;
                const capsuleAxisLength = capsuleShape.radius * 2 + capsuleShape.length;
                const capsuleSize = new vec3(capsuleShape.axis === Axis.X ? capsuleAxisLength : capsuleDiameter, capsuleShape.axis === Axis.Y ? capsuleAxisLength : capsuleDiameter, capsuleShape.axis === Axis.Z ? capsuleAxisLength : capsuleDiameter);
                return { aabbMin: capsuleSize.uniformScale(-0.5), aabbMax: capsuleSize.uniformScale(0.5) };
            case ShapeHelper_1.ShapeType.Cylinder:
            case ShapeHelper_1.ShapeType.Cone:
                const cylinderConeShape = shape;
                const cylinderConeDiameter = cylinderConeShape.radius * 2;
                const cylinderConeAxisLength = cylinderConeShape.length;
                const cylinderConeSize = new vec3(cylinderConeShape.axis === Axis.X ? cylinderConeAxisLength : cylinderConeDiameter, cylinderConeShape.axis === Axis.Y ? cylinderConeAxisLength : cylinderConeDiameter, cylinderConeShape.axis === Axis.Z ? cylinderConeAxisLength : cylinderConeDiameter);
                return { aabbMin: cylinderConeSize.uniformScale(-0.5), aabbMax: cylinderConeSize.uniformScale(0.5) };
            case ShapeHelper_1.ShapeType.Mesh:
                const meshShape = shape;
                const mesh = meshShape.mesh;
                if (!mesh) {
                    return null;
                }
                return { aabbMin: mesh.aabbMin, aabbMax: mesh.aabbMax };
            default:
                return null;
        }
    }
}
exports.AabbBuilder = AabbBuilder;
//# sourceMappingURL=AabbBuilder.js.map