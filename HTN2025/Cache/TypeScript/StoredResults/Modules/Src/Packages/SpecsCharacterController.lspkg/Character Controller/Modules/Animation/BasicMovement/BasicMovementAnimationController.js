"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.BasicMovementAnimationController = void 0;
const Utils_1 = require("../../Utils/Utils");
var delay = Utils_1.Utils.delay;
var CompositeDisposable = Utils_1.Utils.CompositeDisposable;
const Event_1 = require("../../Utils/Event");
const SPEED_THRESHOLD = 0.05;
const MOVE_ANIMATION_TRANSITION_TIME = 0.4;
const DEFAULT_ANIMATION_TRANSITION_TIME = 0.2;
const RETURN_TO_IDLE_TRANSITION_TIME = 0.4;
class BasicMovementAnimationController {
    constructor(config, characterRootSO) {
        this.idleClip = null;
        this.jumpClip = null;
        this.updateDataEvent = new Event_1.Event();
        this.updateCharacterEvent = new Event_1.Event();
        this.isMovementStateEnabled = true;
        this.currentTargetClip = null;
        this.currentClipDisposable = new CompositeDisposable();
        this.characterRootHostingScript = characterRootSO.createComponent("Script");
        this.animationPlayer = characterRootSO.createComponent("AnimationPlayer");
        this.idleClip = createClipFromAnimationConfig("Idle", config.idleAnimation);
        if (this.idleClip) {
            this.animationPlayer.addClip(this.idleClip);
            this.animationPlayer.playClip(this.idleClip.name);
        }
        this.moveAnimationClipsData = retrieveMoveAnimationClipsData(config);
        this.observe();
        this.returnToIdle();
    }
    reset() {
        this.returnToIdle();
    }
    performJump() {
        if (!this.jumpClip) {
            return;
        }
        this.exitMoveState();
        this.startClip(this.jumpClip, DEFAULT_ANIMATION_TRANSITION_TIME);
        const clipDuration = this.jumpClip.duration / this.jumpClip.playbackSpeed;
        const timeToReturnToIdle = Math.max(0, clipDuration - RETURN_TO_IDLE_TRANSITION_TIME);
        this.currentClipDisposable.add(delay(this.characterRootHostingScript, timeToReturnToIdle, () => {
            this.isMovementStateEnabled = true;
            this.returnToIdle();
        }));
    }
    updateMoveAnimation(speed) {
        if (this.hasMoveAnimation && this.isMovementStateEnabled) {
            const currentClip = this.currentMoveAnimationClipData;
            const isInCurrentAnimationRange = currentClip &&
                speed >= currentClip.minSpeed &&
                speed <= currentClip.maxSpeed;
            if (!isInCurrentAnimationRange) {
                const newClip = this.moveAnimationClipsData.find((clip) => speed >= clip.minSpeed && speed <= clip.maxSpeed);
                if (!newClip) {
                    this.returnToIdle();
                    return;
                }
                this.currentMoveAnimationClipData = newClip;
                if (currentClip !== newClip) {
                    this.startClip(newClip.clip, MOVE_ANIMATION_TRANSITION_TIME);
                }
            }
            remapAnimationPlaybackSpeed(this.currentMoveAnimationClipData);
        }
        function remapAnimationPlaybackSpeed(clipData) {
            clipData.clip.playbackSpeed =
                clipData.originalPlaybackSpeed * (speed / clipData.minSpeed);
        }
    }
    bindSpeedProvider(speedProvider) {
        const callback = () => this.updateMoveAnimation(speedProvider.getSpeed());
        this.updateCharacterEvent.add(callback);
        return { dispose: () => this.updateCharacterEvent.remove(callback) };
    }
    observe() {
        this.characterRootHostingScript.createEvent("UpdateEvent").bind((event) => {
            this.updateDataEvent.trigger({ deltaTime: event.getDeltaTime() });
            this.updateCharacterEvent.trigger({ deltaTime: event.getDeltaTime() });
        });
        this.exitMoveState();
    }
    get hasMoveAnimation() {
        return this.moveAnimationClipsData.length > 0;
    }
    exitMoveState() {
        this.currentMoveAnimationClipData = null;
        this.isMovementStateEnabled = false;
    }
    startClip(clip, transitionTime) {
        var _a, _b;
        if (clip && ((_a = this.idleClip) === null || _a === void 0 ? void 0 : _a.isSame(clip))) {
            this.returnToIdle();
            return;
        }
        if (clip && ((_b = this.currentTargetClip) === null || _b === void 0 ? void 0 : _b.isSame(clip))) {
            return;
        }
        this.currentTargetClip = clip;
        this.currentClipDisposable.dispose();
        if (clip) {
            this.animationPlayer.getClip(clip.name) &&
                this.animationPlayer.removeClip(clip.name);
            this.animationPlayer.addClip(clip);
            this.animationPlayer.playClip(clip.name);
            this.currentClipDisposable.add(Utils_1.Utils.startTween(this.characterRootHostingScript, transitionTime, (p) => {
                clip.weight = p;
            }));
        }
    }
    returnToIdle() {
        var _a, _b;
        if (this.idleClip && ((_a = this.currentTargetClip) === null || _a === void 0 ? void 0 : _a.isSame(this.idleClip))) {
            return;
        }
        this.currentTargetClip = this.idleClip;
        this.isMovementStateEnabled = true;
        this.currentMoveAnimationClipData = null;
        this.currentClipDisposable.dispose();
        this.cleanupClips();
        const otherActiveClips = this.getActiveClips();
        const weightSetters = [];
        for (const clip of otherActiveClips) {
            if (clip.name !== ((_b = this.idleClip) === null || _b === void 0 ? void 0 : _b.name)) {
                const originalWeight = clip.weight;
                weightSetters.push((weight) => (clip.weight = originalWeight * weight));
            }
        }
        this.currentClipDisposable.add(Utils_1.Utils.startTween(this.characterRootHostingScript, RETURN_TO_IDLE_TRANSITION_TIME, (p) => {
            for (const setter of weightSetters) {
                setter(1 - p);
            }
        }, () => {
            this.cleanupClips();
        }));
        this.idleClip && this.animationPlayer.playClip(this.idleClip.name);
    }
    cleanupClips() {
        var _a;
        const clips = this.getActiveClips();
        let weight = 0;
        for (let i = clips.length - 1; i >= 0; --i) {
            if (clips[i].name !== ((_a = this.idleClip) === null || _a === void 0 ? void 0 : _a.name) &&
                (weight > 1 || clips[i].weight < 0.001)) {
                this.animationPlayer.removeClip(clips[i].name);
            }
            else {
                weight += clips[i].weight;
            }
        }
    }
    getActiveClips() {
        return this.animationPlayer
            .getActiveClips()
            .map((clipName) => this.animationPlayer.getClip(clipName));
    }
}
exports.BasicMovementAnimationController = BasicMovementAnimationController;
// Helper functions
function retrieveMoveAnimationClipsData(config) {
    const data = config.moveAnimationConfigs
        .map((moveAnimationConfig, idx) => {
        const clip = createClipFromAnimationConfig(`Move${idx}`, moveAnimationConfig);
        if (clip) {
            const playbackSpeed = moveAnimationConfig.playbackSpeed;
            clip.playbackSpeed = playbackSpeed;
            return {
                minSpeed: moveAnimationConfig.minCharacterSpeed,
                maxSpeed: 0,
                clip: clip,
                originalPlaybackSpeed: playbackSpeed,
            };
        }
        return null;
    })
        .filter(Boolean)
        .sort((a, b) => a.minSpeed - b.minSpeed);
    if (data.length > 0) {
        data[data.length - 1].maxSpeed = Number.MAX_VALUE;
        for (let i = 0; i < data.length - 1; i++) {
            data[i].maxSpeed = data[i + 1].minSpeed + SPEED_THRESHOLD;
        }
    }
    return data;
}
function createClipFromAnimationConfig(animationName, animationConfig) {
    if (!animationConfig.animationAsset) {
        return null;
    }
    const clip = AnimationClip.createFromAnimation(animationName, animationConfig.animationAsset);
    clip.playbackSpeed = animationConfig.playbackSpeed;
    return clip;
}
//# sourceMappingURL=BasicMovementAnimationController.js.map