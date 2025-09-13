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
// @input SceneObject objectVisuals
// @input AssignableType characterController
// @input AssignableType_1 animationController
// @input SceneObject cameraObj
// @input int placementSettingMode {"widget":"combobox", "values":[{"label":"Near Surface", "value":0}, {"label":"Horizontal", "value":1}]}
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
var Module = require("../../../../Modules/Src/Assets/Scripts/SceneController");
Object.setPrototypeOf(script, Module.SceneController.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("characterController", []);
    checkUndefined("animationController", []);
    checkUndefined("cameraObj", []);
    checkUndefined("placementSettingMode", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
