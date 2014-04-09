package phaser.core;

@:native("Phaser.Group")
extern class Group {
	@:overload(function (game:phaser.core.Game, parent:phaser.core.Group, ?name:String, ?addToStage:Bool = false, ?enableBody:Bool = false, ?physicsBodyType:Float = 0):Void {})
	@:overload(function (game:phaser.core.Game, parent:phaser.gameobjects.Sprite, ?name:String, ?addToStage:Bool = false, ?enableBody:Bool = false, ?physicsBodyType:Float = 0):Void {})
	function new (game:phaser.core.Game, parent:Dynamic, ?name:String, ?addToStage:Bool = false, ?enableBody:Bool = false, ?physicsBodyType:Float = 0);
	var game:phaser.core.Game;
	var name:String;
	var z:Float;
	var type:Float;
	var alive:Bool;
	var exists:Bool;
	var scale:phaser.geom.Point;
	var cursor:Dynamic;
	var cameraOffset:phaser.geom.Point;
	var enableBody:Bool;
	var enableBodyDebug:Bool;
	var physicsBodyType:Float;
	var _sortProperty:String;
	var cache:Array<Dynamic>;
	static var RETURN_NONE:Float;
	static var RETURN_TOTAL:Float;
	static var RETURN_CHILD:Float;
	static var SORT_ASCENDING:Float;
	static var SORT_DESCENDING:Float;
	function add (child:Dynamic):Dynamic;
	function addAt (child:Dynamic, index:Float):Dynamic;
	function getAt (index:Float):Dynamic;
	@:overload(function (x:Float, y:Float, key:String, ?frame:Float, ?exists:Bool = true):phaser.gameobjects.Sprite {})
	function create (x:Float, y:Float, key:String, ?frame:String, ?exists:Bool = true):phaser.gameobjects.Sprite;
	@:overload(function (quantity:Float, key:String, ?frame:Float, ?exists:Bool = false):Void {})
	function createMultiple (quantity:Float, key:String, ?frame:String, ?exists:Bool = false):Void;
	function updateZ ():Void;
	function next ():Void;
	function previous ():Void;
	function swap (child1:Dynamic, child2:Dynamic):Void;
	function bringToTop (child:Dynamic):Dynamic;
	function sendToBack (child:Dynamic):Dynamic;
	function moveUp (child:Dynamic):Dynamic;
	function moveDown (child:Dynamic):Dynamic;
	function xy (index:Float, x:Float, y:Float):Void;
	function reverse ():Void;
	function getIndex (child:Dynamic):Float;
	function replace (oldChild:Dynamic, newChild:Dynamic):Dynamic;
	function setProperty (child:Dynamic, key:Dynamic, value:Dynamic, ?operation:Float = 0):Void;
	function set (child:phaser.gameobjects.Sprite, key:String, value:Dynamic, ?checkAlive:Bool = false, ?checkVisible:Bool = false, ?operation:Float = 0):Void;
	function setAll (key:String, value:Dynamic, ?checkAlive:Bool = false, ?checkVisible:Bool = false, ?operation:Float = 0):Void;
	function setAllChildren (key:String, value:Dynamic, ?checkAlive:Bool = false, ?checkVisible:Bool = false, ?operation:Float = 0):Void;
	function addAll (property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	function subAll (property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	function multiplyAll (property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	function divideAll (property:String, amount:Float, checkAlive:Bool, checkVisible:Bool):Void;
	function callAllExists (callback:Dynamic, existsValue:Bool, parameter:Dynamic):Void;
	function callbackFromArray (child:Dynamic, callback:Dynamic, length:Float):Void;
	function callAll (method:String, ?context:String, parameter:Dynamic):Void;
	function preUpdate ():Void;
	function update ():Void;
	function postUpdate ():Void;
	function forEach (callback:Dynamic, callbackContext:Dynamic, checkExists:Bool):Void;
	function forEachExists (callback:Dynamic, callbackContext:Dynamic):Void;
	function forEachAlive (callback:Dynamic, callbackContext:Dynamic):Void;
	function forEachDead (callback:Dynamic, callbackContext:Dynamic):Void;
	function sort (?index:String = 'z', ?order:Float):Void;
	function ascendingSortHandler (a:Dynamic, b:Dynamic):Void;
	function descendingSortHandler (a:Dynamic, b:Dynamic):Void;
	function iterate (key:String, value:Dynamic, returnType:Float, ?callback:Dynamic, ?callbackContext:Dynamic):Dynamic;
	function getFirstExists (state:Bool):Dynamic;
	function getFirstAlive ():Dynamic;
	function getFirstDead ():Dynamic;
	function getTop ():Dynamic;
	function getBottom ():Dynamic;
	function countLiving ():Float;
	function countDead ():Float;
	function getRandom (startIndex:Float, length:Float):Dynamic;
	function remove (child:Dynamic):Bool;
	function removeAll ():Void;
	function removeBetween (startIndex:Float, endIndex:Float):Void;
	function destroy (?destroyChildren:Bool = true, ?soft:Bool = false):Void;
	var total(default, null):Float;
	var length(default, null):Float;
	var angle:Float;
	var fixedToCamera:Bool;
	var x:Float;
	var y:Float;
	var rotation:Float;
	var visible:Bool;
	var alpha:Float;
}
