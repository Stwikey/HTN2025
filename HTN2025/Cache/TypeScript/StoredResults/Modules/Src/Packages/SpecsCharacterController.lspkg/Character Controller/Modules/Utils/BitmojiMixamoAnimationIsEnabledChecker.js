"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.BitmojiMixamoAnimationIsEnabledChecker = void 0;
const NUM_FRAMES_TO_SKIP_BEFORE_CHECKING_BITMOJI = 5;
/**
 * Class skips several frames and checks that Bitmoji 3D component (if it is present) on the same
 * SceneObject has Adapt to Mixamo so that Character controller animations work correctly.
 */
class BitmojiMixamoAnimationIsEnabledChecker {
    constructor() {
        this.skipFrames = NUM_FRAMES_TO_SKIP_BEFORE_CHECKING_BITMOJI;
    }
    checkIsMixamoEnabled(so, logger, onComplete) {
        this.skipFrames--;
        if (this.skipFrames <= 0) {
            onComplete();
            so.getComponents("ScriptComponent")
                .forEach((scriptComponent) => {
                if (this.isBitmoji3DComponent(scriptComponent)) {
                    const bitmoji3D = scriptComponent;
                    if (!bitmoji3D.mixamoAnimation) {
                        logger.printWarning("Adapt to Mixamo should be enabled for Bitmoji 3D component");
                    }
                }
            });
        }
    }
    isBitmoji3DComponent(scriptComponent) {
        const bitmoji3D = scriptComponent;
        return !isNull(bitmoji3D.mixamoAnimation);
    }
}
exports.BitmojiMixamoAnimationIsEnabledChecker = BitmojiMixamoAnimationIsEnabledChecker;
//# sourceMappingURL=BitmojiMixamoAnimationIsEnabledChecker.js.map