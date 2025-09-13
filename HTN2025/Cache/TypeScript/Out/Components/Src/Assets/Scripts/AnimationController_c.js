if (script.onAwake) {
	script.onAwake();
	return;
};
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
// @input Asset.AnimationAsset kick
// @input Asset.AnimationAsset punch
// @input Asset.AnimationAsset jump
// @input Asset.AnimationAsset walk
// @input Asset.AnimationAsset run
// @input Asset.AnimationAsset idle
// @input AssignableType characterController
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
var Module = require("../../../../Modules/Src/Assets/Scripts/AnimationController");
Object.setPrototypeOf(script, Module.AnimationController.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("kick", []);
    checkUndefined("punch", []);
    checkUndefined("jump", []);
    checkUndefined("walk", []);
    checkUndefined("run", []);
    checkUndefined("idle", []);
    checkUndefined("characterController", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
