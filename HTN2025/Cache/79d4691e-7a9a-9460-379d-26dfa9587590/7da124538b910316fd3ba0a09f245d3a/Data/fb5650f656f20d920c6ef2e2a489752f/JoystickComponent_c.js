if (script.onAwake) {
	script.onAwake();
	return;
};
/*
@typedef JoystickComponentConfig
@property {float} renderOrder = 100 
@property {int} position {"widget":"combobox", "values":[{"label":"Free", "value":0}, {"label":"Fixed", "value":1}]}
@property {Component.InteractionComponent} interactiveArea {"hint":"Interactive Area defines screen area where joystick may appear with Free position type. If configured, it appears only when a touch starts within this area. Otherwise, it can appear anywhere on screen.", "showIf":"position", "showIfValue":0}
@property {float} deadZone = 0.2 {"widget":"slider", "min":0, "max":0.99}
@property {float} sensitivity = 0.96 
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
// @input JoystickComponentConfig config
// @input Asset.ObjectPrefab controlDotPrefab
// @input Asset.ObjectPrefab controlPlatePrefab
// @input float releaseJoystickAnimationLerpFactor = 0.5
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
var Module = require("../../../../../../../../../Modules/Src/Packages/SpecsCharacterController.lspkg/Character Controller/Resources/Input/JoystickComponent.lsc/Scripts/JoystickComponent");
Object.setPrototypeOf(script, Module.JoystickComponent.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("config", []);
    checkUndefined("controlDotPrefab", []);
    checkUndefined("controlPlatePrefab", []);
    checkUndefined("releaseJoystickAnimationLerpFactor", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
