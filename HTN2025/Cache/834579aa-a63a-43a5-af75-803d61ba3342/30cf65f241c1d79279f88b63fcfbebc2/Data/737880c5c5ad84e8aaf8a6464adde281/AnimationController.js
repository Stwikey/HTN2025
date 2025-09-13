"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.AnimationController = void 0;
var __selfType = requireType("./AnimationController");
function component(target) { target.getTypeName = function () { return __selfType; }; }
let AnimationController = class AnimationController extends BaseScriptComponent {
    onAwake() {
        this.createEvent("OnStartEvent").bind(this.onStart.bind(this));
    }
    onStart() {
        this.createEvent("UpdateEvent").bind(this.onUpdate.bind(this));
        this.animationPlayer =
            this.getSceneObject().createComponent("AnimationPlayer");
        this.createAllAnimationClips();
        // set idle clip as the default animation
        this.currClip = this.idleClip;
    }
    playJumpAnimation() {
        this.playSingleAnimation(this.jumpClip);
    }
    playKickAnimation() {
        this.playSingleAnimation(this.kickClip);
    }
    playPunchAnimation() {
        this.playSingleAnimation(this.punchClip);
    }
    playSingleAnimation(clip) {
        if (this.animationPlayer != null) {
            print("Playing: " + clip.name);
            this.setNewClip(clip);
            this.animationPlayer.playClip(clip.name);
        }
    }
    createAllAnimationClips() {
        //looping animations
        this.idleClip = this.createLoopedClip("Idle", this.idle);
        this.walkClip = this.createLoopedClip("Walk", this.walk);
        this.runClip = this.createLoopedClip("Run", this.run);
        //one shot animations
        this.jumpClip = this.createSingleClip("Jump", this.jump);
        this.kickClip = this.createSingleClip("Kick", this.kick);
        this.punchClip = this.createSingleClip("Punch", this.punch);
    }
    createLoopedClip(name, animAsset) {
        var clip = AnimationClip.createFromAnimation(name, animAsset);
        clip.weight = 0;
        this.animationPlayer.addClip(clip);
        this.animationPlayer.playClip(clip.name);
        this.clips.push(clip);
        return clip;
    }
    createSingleClip(name, animAsset) {
        var clip = AnimationClip.createFromAnimation(name, animAsset);
        clip.playbackMode = PlaybackMode.Single;
        this.animationPlayer.addClip(clip);
        this.clips.push(clip);
        return clip;
    }
    setNewClip(clip) {
        this.currClip = clip;
    }
    blendClips() {
        for (const clip of this.clips) {
            const weight = clip.name != this.currClip.name ? 0 : 1;
            clip.weight = MathUtils.lerp(clip.weight, weight, getDeltaTime() * 7);
        }
        //MAKE SURE IDLE IS ALWAYS WEIGHT 1
        this.idleClip.weight = 1;
    }
    isClipAlmostDone(clip) {
        return (this.animationPlayer.getClipCurrentTime(clip.name) > clip.duration - 0.4);
    }
    onUpdate() {
        this.blendClips();
        //return to idle after single clip is done
        if (this.currClip.playbackMode === PlaybackMode.Single) {
            //block movement unless jumping
            if (this.currClip.name != this.jumpClip.name) {
                this.characterController.stopMovement();
            }
            if (this.isClipAlmostDone(this.currClip)) {
                this.setNewClip(this.idleClip);
            }
            return;
        }
        var maxSpeed = this.characterController.getMoveSpeed();
        var currSpeed = this.characterController.getVelocity().length;
        //check for idle
        if (currSpeed < 5) {
            this.setNewClip(this.idleClip);
        }
        //check for walk
        if (currSpeed > 5 && currSpeed < maxSpeed / 2) {
            this.setNewClip(this.walkClip);
        }
        //check for run
        if (currSpeed > maxSpeed / 2 && this.runClip.weight < 0.5) {
            this.setNewClip(this.runClip);
        }
    }
    __initialize() {
        super.__initialize();
        this.idleClip = null;
        this.jumpClip = null;
        this.kickClip = null;
        this.punchClip = null;
        this.walkClip = null;
        this.runClip = null;
        this.clips = [];
        this.currClip = null;
    }
};
exports.AnimationController = AnimationController;
exports.AnimationController = AnimationController = __decorate([
    component
], AnimationController);
//# sourceMappingURL=AnimationController.js.map