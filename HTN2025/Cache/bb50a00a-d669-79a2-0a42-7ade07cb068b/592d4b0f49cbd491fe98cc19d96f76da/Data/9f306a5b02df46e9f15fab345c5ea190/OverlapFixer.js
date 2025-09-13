"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.OverlapFixer = void 0;
const ProbeHelper_1 = require("../CollisionHelpers/ProbeHelper");
const DirectionsForFixingOverlapProvider_1 = require("./DirectionsForFixingOverlapProvider");
const AabbOverlap_1 = require("../CollisionHelpers/AabbOverlap");
const Utils_1 = require("../../Utils/Utils");
class OverlapFixer {
    constructor(rayCastController, groundDetection, lockAxisController) {
        this.rayCastController = rayCastController;
        this.groundDetection = groundDetection;
        this.lockAxisController = lockAxisController;
    }
    fixOverlapWithAabbRecursively(initialPosition, position, characterAabb, aabb, allPositions, onComplete, aabbIndex = 0) {
        if (aabbIndex >= aabb.length) {
            onComplete(position);
            return;
        }
        this.fixOverlapWithAabb(initialPosition, position, characterAabb, aabb[aabbIndex], (position) => {
            this.fixOverlapWithAabbRecursively(initialPosition, position, characterAabb, aabb, allPositions, onComplete, aabbIndex + 1);
        });
    }
    fixOverlapInDefaultDirections(initialPosition, position, characterAabb, aabb, onComplete) {
        const directions = this.getDefaultDirections();
        this.checkDirectionsRecursively(position, directions, characterAabb, aabb, (newPositions) => {
            let resultPosition = initialPosition;
            if (newPositions.length > 0 && !newPositions.some((pos) => !pos)) {
                let newPositionsFiltered = newPositions.filter((pos) => !!pos);
                if (newPositionsFiltered.length > 0) {
                    let minNumOverlaps = aabb.length + 1;
                    let positions = [];
                    newPositionsFiltered.forEach((pos) => {
                        const charAabbInPosition = characterAabb.setPosition(pos);
                        const overlapped = aabb.filter((aabb) => AabbOverlap_1.AabbOverlap.isAabbOverlap(aabb, charAabbInPosition));
                        if (overlapped.length === minNumOverlaps) {
                            positions.push(pos);
                        }
                        else if (overlapped.length < minNumOverlaps) {
                            minNumOverlaps = overlapped.length;
                            positions = [pos];
                        }
                    });
                    newPositionsFiltered = positions;
                    const closestPos = newPositionsFiltered
                        .reduce((a, b) => a.distance(initialPosition) < b.distance(initialPosition) ? a : b);
                    resultPosition = closestPos;
                }
                else {
                    resultPosition = initialPosition;
                }
            }
            onComplete(resultPosition);
        });
    }
    fixOverlapWithAabb(initialPosition, position, characterAabb, aabb, onComplete) {
        this.groundDetection.findGround({
            searchForNextGroundY: false,
            findSteepGround: false,
            skipStepHeight: false,
            onlyColliders: [aabb.collider],
            initialPosition,
            nextPosition: position,
        }, (groundInfo) => {
            if (groundInfo && groundInfo.isCharacterOnGround && groundInfo.ground === aabb.collider) {
                const newPos = new vec3(position.x, this.groundDetection.getGroundY(), position.z);
                this.groundDetection.applyGround(groundInfo);
                onComplete(newPos);
            }
            else {
                const directions = this.getDirections(position, aabb);
                const initPos = Utils_1.Utils.copyVec3(position);
                this.checkDirectionsRecursively(position, directions, characterAabb, [aabb], (newPositions) => {
                    let resultPosition = initPos;
                    if (newPositions.length > 0 && !newPositions.some((pos) => !pos)) {
                        const newPositionsFiltered = newPositions.filter((pos) => !!pos);
                        if (newPositionsFiltered.length > 0) {
                            const closestPos = newPositionsFiltered
                                .reduce((a, b) => a.distance(initPos) < b.distance(initPos) ? a : b);
                            resultPosition = closestPos;
                        }
                        else {
                            resultPosition = initPos;
                        }
                    }
                    onComplete(resultPosition);
                });
            }
        });
    }
    checkDirectionsRecursively(position, directions, characterAabb, aabb, onComplete, directionIndex = 0, newPositions = []) {
        if (directionIndex >= directions.length) {
            onComplete(newPositions);
            return;
        }
        this.checkDirection(position, directions[directionIndex], characterAabb, aabb, (newPosition) => {
            newPositions.push(newPosition);
            this.checkDirectionsRecursively(position, directions, characterAabb, aabb, onComplete, directionIndex + 1, newPositions);
        });
    }
    checkDirection(position, direction, characterAabb, aabb, onComplete) {
        this.shapeCastInDirection(position, direction, characterAabb, aabb, (newPos, hit) => {
            if (newPos && hit) {
                const actualDirection = newPos.sub(position);
                if (actualDirection.length > Utils_1.Utils.EPS) {
                    const crossProduct = actualDirection.cross(direction);
                    if (crossProduct.length <= Utils_1.Utils.EPS) {
                        const isSameDirectionInAxis = (a, b) => (Math.abs(a) <= Utils_1.Utils.EPS && Math.abs(b) <= Utils_1.Utils.EPS)
                            || ((a < 0) === (b < 0));
                        const isSameDirection = isSameDirectionInAxis(actualDirection.x, direction.x)
                            && isSameDirectionInAxis(actualDirection.y, direction.y)
                            && isSameDirectionInAxis(actualDirection.z, direction.z);
                        if (!isSameDirection) {
                            // skip, because it will move character closer to object, there is no overlap
                            onComplete(null);
                        }
                        else {
                            onComplete(newPos);
                        }
                    }
                    else {
                        onComplete(newPos);
                    }
                }
                else {
                    onComplete(newPos);
                }
            }
            else {
                onComplete(newPos);
            }
        });
    }
    shapeCastInDirection(position, direction, characterAabb, aabb, onReady) {
        const SIZE_OFFSET = 1;
        const totalRaySize = aabb.map((aabb) => aabb.size)
            .reduce((a, b) => a + b)
            + characterAabb.size + SIZE_OFFSET;
        const END_OFFSET = 1;
        const end = position.add(direction.uniformScale(-1 * END_OFFSET));
        const start = end.add(direction.uniformScale(totalRaySize));
        this.rayCastController.probe.filter.onlyColliders = aabb.map((aabb) => aabb.collider);
        this.rayCastController.shapeCast(start, end, (hit) => {
            if (hit) {
                onReady((0, ProbeHelper_1.getRayCastCollisionCharacterPosition)(start, end, hit), hit);
            }
            else {
                onReady(null, null);
            }
        });
    }
    getDirections(characterPosition, aabb) {
        const normal = this.groundDetection.getGroundNormal();
        let directions = DirectionsForFixingOverlapProvider_1.DirectionsForFixingOverlapProvider.getDirections(characterPosition, aabb)
            .map((dir) => {
            if (this.groundDetection.getIsCharacterOnGround() && normal) {
                return dir.projectOnPlane(normal);
            }
            else {
                return dir;
            }
        })
            .map((dir) => this.lockAxisController.updateDirection(dir));
        let isZeroDirection = false;
        for (let i = 0; i < directions.length; i++) {
            if (directions[i].length < Utils_1.Utils.EPS) {
                isZeroDirection = true;
                break;
            }
        }
        if (isZeroDirection) {
            const defaultDirections = this.lockAxisController.getAvailableHorizontalDirections()
                .map((dir) => {
                if (normal) {
                    return dir.projectOnPlane(normal);
                }
                else {
                    return dir;
                }
            })
                .map((dir) => this.lockAxisController.updateDirection(dir));
            directions.push(...defaultDirections);
        }
        directions = directions
            .filter((dir) => dir.length > Utils_1.Utils.EPS)
            .map((dir) => dir.normalize());
        return directions;
    }
    getDefaultDirections() {
        const normal = this.groundDetection.getGroundNormal();
        const directions = this.lockAxisController.getAvailableHorizontalDirections()
            .map((dir) => {
            if (this.groundDetection.getIsCharacterOnGround() && normal) {
                return dir.projectOnPlane(normal);
            }
            else {
                return dir;
            }
        })
            .map((dir) => this.lockAxisController.updateDirection(dir))
            .filter((dir) => dir.length > Utils_1.Utils.EPS)
            .map((dir) => dir.normalize());
        return directions;
    }
}
exports.OverlapFixer = OverlapFixer;
//# sourceMappingURL=OverlapFixer.js.map