package phaser.gameobjects;

@:native("Phaser.Sprite")
extern class Sprite extends phaser.pixi.display.Sprite {
	var game:phaser.core.Game;
	var name:String;
	var type(default, null):Float;
	var z:Float;
	var events:phaser.gameobjects.Events;
	var animations:phaser.animation.AnimationManager;
	var key:Dynamic;
	var _frame:Float;
	var _frameName:String;
	var world:phaser.geom.Point;
	var autoCull:Bool;
	var input:Dynamic;
	var body:Dynamic;
	var health:Float;
	var lifespan:Float;
	var checkWorldBounds:Bool;
	var outOfBoundsKill:Bool;
	var debug:Bool;
	var cameraOffset:phaser.geom.Point;
	var cache:Array<Dynamic>;
	var _bounds:phaser.geom.Rectangle;
	function preUpdate ():Bool;
	function update ():Void;
	function postUpdate ():Void;
	@:overload(function (key:String, frame:String):Void {})
	@:overload(function (key:phaser.gameobjects.RenderTexture, frame:String):Void {})
	@:overload(function (key:phaser.gameobjects.BitmapData, frame:String):Void {})
	@:overload(function (key:phaser.pixi.textures.Texture, frame:String):Void {})
	@:overload(function (key:String, frame:Float):Void {})
	@:overload(function (key:phaser.gameobjects.RenderTexture, frame:Float):Void {})
	@:overload(function (key:phaser.gameobjects.BitmapData, frame:Float):Void {})
	function loadTexture (key:phaser.pixi.textures.Texture, frame:Float):Void;
	function crop (rect:phaser.geom.Rectangle):Void;
	function revive (?health:Float = 1):Dynamic;
	function kill ():Dynamic;
	function destroy (?destroyChildren:Bool = true):Void;
	function damage (amount:Float):Dynamic;
	function reset (x:Float, y:Float, ?health:Float = 1):Dynamic;
	function bringToTop ():Dynamic;
	function play (name:String, ?frameRate:Float, ?loop:Bool = false, ?killOnComplete:Bool = false):phaser.animation.Animation;
	var angle:Float;
	var deltaX(default, null):Float;
	var deltaY(default, null):Float;
	var deltaZ(default, null):Float;
	var inWorld(default, null):Bool;
	var inCamera(default, null):Bool;
	var frame:Float;
	var frameName:String;
	var renderOrderID(default, null):Float;
	var inputEnabled:Bool;
	var exists:Bool;
	var fixedToCamera:Bool;
	var smoothed:Bool;
}
