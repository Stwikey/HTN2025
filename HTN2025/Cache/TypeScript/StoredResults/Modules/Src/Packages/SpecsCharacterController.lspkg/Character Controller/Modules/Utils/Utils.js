"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Utils = void 0;
var Utils;
(function (Utils) {
    Utils.EPS = 1e-6;
    function degreesToRadians(degrees) {
        return degrees / 180 * Math.PI;
    }
    Utils.degreesToRadians = degreesToRadians;
    function isColliderDynamic(collider) {
        return collider.getTypeName() === "Physics.BodyComponent"
            && collider.dynamic;
    }
    Utils.isColliderDynamic = isColliderDynamic;
    function copyVec3(obj) {
        return new vec3(obj.x, obj.y, obj.z);
    }
    Utils.copyVec3 = copyVec3;
    function* flatSubtree(rootSO) {
        yield rootSO;
        for (const child of rootSO.children) {
            yield* flatSubtree(child);
        }
    }
    Utils.flatSubtree = flatSubtree;
    function assignRenderLayerRecursively(rootSO, layer) {
        for (const child of Utils.flatSubtree(rootSO)) {
            child.layer = layer;
        }
    }
    Utils.assignRenderLayerRecursively = assignRenderLayerRecursively;
    function startTween(hostingScript, time, progressCallback, onCompleteCallback, onDisposeCallback) {
        time = Math.max(time, 0);
        const updateEvent = hostingScript.createEvent("UpdateEvent");
        const dispose = () => {
            hostingScript.removeEvent(updateEvent);
            updateEvent.enabled = false;
            onDisposeCallback === null || onDisposeCallback === void 0 ? void 0 : onDisposeCallback();
        };
        let elapsedTime = 0;
        updateEvent.bind(event => {
            elapsedTime += event.getDeltaTime();
            if (elapsedTime >= time) {
                progressCallback(1);
                onCompleteCallback === null || onCompleteCallback === void 0 ? void 0 : onCompleteCallback();
                dispose();
            }
            else {
                progressCallback(elapsedTime / time);
            }
        });
        progressCallback(0);
        return { dispose };
    }
    Utils.startTween = startTween;
    function delay(hostingScript, time, onCompleteCallback) {
        const event = hostingScript.createEvent("DelayedCallbackEvent");
        const dispose = () => {
            hostingScript.removeEvent(event);
            event.enabled = false;
        };
        event.bind(() => {
            onCompleteCallback();
            dispose();
        });
        event.reset(time);
        return { dispose };
    }
    Utils.delay = delay;
    class CompositeDisposable {
        constructor() {
            this.disposables = new Set();
        }
        add(...disposables) {
            for (const disposable of disposables) {
                this.disposables.add(disposable);
            }
        }
        dispose() {
            const toDispose = this.disposables;
            this.disposables = new Set();
            for (const disposable of toDispose) {
                disposable.dispose();
            }
        }
    }
    Utils.CompositeDisposable = CompositeDisposable;
})(Utils || (exports.Utils = Utils = {}));
//# sourceMappingURL=Utils.js.map