"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.CallbacksWrapper = void 0;
/**
 * CallbacksWrapper wraps callbacks so that they are not executed in case component
 * was disabled or destroyed.
 */
class CallbacksWrapper {
    constructor(component) {
        this.component = component;
        this.rootSO = this.component.getSceneObject();
    }
    wrap(cb) {
        return (...args) => {
            if (!this.isDestroyedOrDisabled()) {
                return cb(...args);
            }
        };
    }
    isDestroyedOrDisabled() {
        return isNull(this.component) || isNull(this.rootSO)
            || !this.component.enabled || !this.rootSO.enabled || !this.rootSO.isEnabledInHierarchy;
    }
}
exports.CallbacksWrapper = CallbacksWrapper;
//# sourceMappingURL=CallbacksWrapper.js.map