if (script.onAwake) {
	script.onAwake();
	return;
};
/*
@typedef JoystickInputControlConfig
@property {int} joystickPositionTypeConfig {"widget":"combobox", "values":[{"label":"Free", "value":0}, {"label":"Left", "value":1}, {"label":"Right", "value":2}, {"label":"Custom", "value":3}]}
@property {SceneObject} joystickParent {"showIf":"joystickPositionTypeConfig", "showIfValue":3}
@property {Component.InteractionComponent} interactiveArea {"hint":"Interactive Area defines screen area where joystick may appear with Free position type. If configured, it appears only when a touch starts within this area. Otherwise, it can appear anywhere on screen.", "showIf":"joystickPositionTypeConfig", "showIfValue":0}
@property {float} sensitivity = 0.96 {"widget":"slider", "min":0.1, "max":1}
@property {float} deadZone = 0.1 {"widget":"slider", "min":0, "max":0.99}
@property {int} renderOrder = 200 
*/
function checkUndefined(property, showIfData){
   for (var i = 0; i < showIfData.length; i++){
       if (showIfData[i][0] && script[showIfData[i][0]] != showIfData[i][1]){
           return;
       }
   }
   if (script[property] == undefined){
      throw new Error('Input ' + property + ' was not provided for the object ' + script.getSceneObject().name);
   }
}
// @ui {"widget":"group_start", "label":"Movement"}
// @input float moveSpeed = 100 {"hint":"Controls how fast the character moves", "widget":"spinbox", "min":0}
// @input float sprintSpeed = 200 {"hint":"Controls how fast the character runs", "widget":"spinbox", "min":0}
// @input float acceleration = 100 {"hint":"Determines how quickly the character reaches full speed", "widget":"spinbox", "min":0}
// @input float deceleration = 100 {"hint":"Defines how quickly the character slows down when input stops", "widget":"spinbox", "min":0}
// @input float minMoveDistance = 0.01 {"hint":"Defines the smallest movement distance before applying updates"}
// @input float slopeLimit = 45 {"hint":"Limits movement on steep inclines to prevent unnatural climbing", "widget":"slider", "min":1, "max":90}
// @input bool autoFaceMovementDirection = true {"hint":"Determines if the character automatically rotates to match the movement direction"}
// @input float rotationSmoothing = 0.5 {"hint":"Defines how smoothly the character rotates towards movement direction, from 0 to 1.", "widget":"slider", "min":0, "max":1, "showIf":"autoFaceMovementDirection"}
// @ui {"widget":"group_end"}
// @ui {"widget":"separator"}
// @ui {"widget":"group_start", "label":"Constraints"}
// @input bool lockXAxis {"hint":"Disables movement along the X axis"}
// @input bool lockYAxis {"hint":"Disables movement along the Y axis"}
// @input bool lockZAxis {"hint":"Disables movement along the Z axis"}
// @ui {"widget":"group_end"}
// @ui {"widget":"separator"}
// @ui {"widget":"group_start", "label":"Input Control"}
// @input bool enableTouchBlocking = true
// @input int inputControlType {"widget":"combobox", "values":[{"label":"None", "value":0}, {"label":"Joystick", "value":1}]}
// @input Component.Camera trackingCamera {"showIf":"inputControlType", "showIfValue":1}
// @input JoystickInputControlConfig joystickConfig {"showIf":"inputControlType", "showIfValue":1}
// @ui {"widget":"group_end"}
// @ui {"widget":"separator"}
// @ui {"widget":"group_start", "label":"Physics"}
// @input float gravity = -980 {"hint":"Controls how fast the character falls", "widget":"spinbox", "max":0}
// @input float airControl = 1 {"hint":"Determines how much movement influence the player has mid-air", "widget":"slider", "min":0, "max":1}
// @input bool showCollider {"hint":"Makes character controller collider visible"}
// @input bool groundIsZero {"hint":"Enables a virtual ground plane at Y = 0 for simplified grounding"}
// @input float groundCheckDistance = 1000 {"widget":"spinbox", "min":0.01}
// @input float stepHeight = 10 {"hint":"Maximum step height when climbing a step", "widget":"spinbox", "min":0.0001}
// @input float colliderHeight {"hint":"Length of capsule", "widget":"spinbox", "min":0}
// @input float colliderRadius {"hint":"Radius of capsule", "widget":"spinbox", "min":0.0001}
// @input vec3 colliderCenter {"hint":"Offset of capsule"}
// @ui {"widget":"group_end"}
// @ui {"widget":"separator"}
// @ui {"widget":"group_start", "label":"Animation"}
// @input bool useAnimation = true
// @ui {"widget":"group_start", "label":"Animation Config", "showIf":"useAnimation"}
// @ui {"widget":"group_start", "label":"Idle Animation"}
// @input Asset.AnimationAsset idleAnimationAsset {"label":"Animation Asset"}
// @input float idlePlaybackSpeed = 1 {"label":"Playback Speed", "widget":"spinbox", "min":0}
// @ui {"widget":"group_end"}
// @ui {"widget":"group_start", "label":"Move Animation"}
// @input float moveMinCharacterSpeed = 10 {"label":"Min Character Speed", "widget":"spinbox", "min":0}
// @input Asset.AnimationAsset moveAnimationAsset {"label":"Animation Asset"}
// @input float movePlaybackSpeed = 1 {"label":"Playback Speed", "hint":"Playback speed for the animation when the character speed is at its minimum.", "widget":"spinbox", "min":0}
// @ui {"widget":"group_end"}
// @ui {"widget":"group_start", "label":"Sprint Animation"}
// @input float sprintMinCharacterSpeed = 10 {"label":"Min Character Speed", "widget":"spinbox", "min":0}
// @input Asset.AnimationAsset sprintAnimationAsset {"label":"Animation Asset"}
// @input float sprintPlaybackSpeed = 1 {"label":"Playback Speed", "hint":"Playback speed for the animation when the character speed is at its minimum.", "widget":"spinbox", "min":0}
// @ui {"widget":"group_end"}
// @ui {"widget":"group_end"}
// @ui {"widget":"group_end"}
// @ui {"widget":"separator"}
// @input bool printWarningStatements = "true" {"label":"Print Warnings"}
var scriptPrototype = Object.getPrototypeOf(script);
if (!global.BaseScriptComponent){
   function BaseScriptComponent(){}
   global.BaseScriptComponent = BaseScriptComponent;
   global.BaseScriptComponent.prototype = scriptPrototype;
   global.BaseScriptComponent.prototype.__initialize = function(){};
   global.BaseScriptComponent.getTypeName = function(){
       throw new Error("Cannot get type name from the class, not decorated with @component");
   }
}
var Module = require("../../../../../Modules/Src/Packages/SpecsCharacterController.lspkg/Character Controller/Character Controller");
Object.setPrototypeOf(script, Module.CharacterController.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("moveSpeed", []);
    checkUndefined("sprintSpeed", []);
    checkUndefined("acceleration", []);
    checkUndefined("deceleration", []);
    checkUndefined("minMoveDistance", []);
    checkUndefined("slopeLimit", []);
    checkUndefined("autoFaceMovementDirection", []);
    checkUndefined("rotationSmoothing", [["autoFaceMovementDirection",true]]);
    checkUndefined("lockXAxis", []);
    checkUndefined("lockYAxis", []);
    checkUndefined("lockZAxis", []);
    checkUndefined("enableTouchBlocking", []);
    checkUndefined("inputControlType", []);
    checkUndefined("joystickConfig", [["inputControlType",1]]);
    checkUndefined("gravity", []);
    checkUndefined("airControl", []);
    checkUndefined("showCollider", []);
    checkUndefined("groundIsZero", []);
    checkUndefined("groundCheckDistance", []);
    checkUndefined("stepHeight", []);
    checkUndefined("colliderHeight", []);
    checkUndefined("colliderRadius", []);
    checkUndefined("colliderCenter", []);
    checkUndefined("useAnimation", []);
    checkUndefined("idlePlaybackSpeed", [["useAnimation",true]]);
    checkUndefined("moveMinCharacterSpeed", [["useAnimation",true]]);
    checkUndefined("movePlaybackSpeed", [["useAnimation",true]]);
    checkUndefined("sprintMinCharacterSpeed", [["useAnimation",true]]);
    checkUndefined("sprintPlaybackSpeed", [["useAnimation",true]]);
    checkUndefined("printWarningStatements", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
