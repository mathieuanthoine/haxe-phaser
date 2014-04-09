package phaser.loader;

@:native("Phaser.Loader")
extern class Loader {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var _fileList:Dynamic;
	var _fileIndex:Float;
	var _progressChunk:Float;
	var _xhr:Dynamic;
	var isLoading:Bool;
	var hasLoaded:Bool;
	var progress:Float;
	var progressFloat:Float;
	var preloadSprite:Dynamic;
	var crossOrigin:Dynamic;
	var baseURL:String;
	var onFileComplete:phaser.core.Signal;
	var onFileError:phaser.core.Signal;
	var onLoadStart:phaser.core.Signal;
	var onLoadComplete:phaser.core.Signal;
	static var TEXTURE_ATLAS_JSON_ARRAY:Float;
	static var TEXTURE_ATLAS_JSON_HASH:Float;
	static var TEXTURE_ATLAS_XML_STARLING:Float;
	static var PHYSICS_LIME_CORONA:Float;
	@:overload(function (sprite:phaser.gameobjects.Sprite, ?direction:Float = 0):Void {})
	function setPreloadSprite (sprite:phaser.gameobjects.Image, ?direction:Float = 0):Void;
	function checkKeyExists (type:String, key:String):Bool;
	function getAssetIndex (type:String, key:String):Float;
	function getAsset (type:String, key:String):Dynamic;
	function reset ():Void;
	function addToFileList (type:String, key:String, url:String, properties:Dynamic):Void;
	function replaceInFileList (type:String, key:String, url:String, properties:Dynamic):Void;
	function image (key:String, url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	function text (key:String, url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	function json (key:String, url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	function script (key:String, url:String, ?callback:Dynamic, ?callbackContext:Dynamic):phaser.loader.Loader;
	function binary (key:String, url:String, ?callback:Dynamic, ?callbackContext:Dynamic):phaser.loader.Loader;
	function spritesheet (key:String, url:String, frameWidth:Float, frameHeight:Float, ?frameMax:Float, ?margin:Float = 0, ?spacing:Float = 0):phaser.loader.Loader;
	@:overload(function (key:String, urls:Array<Dynamic>, autoDecode:Bool):phaser.loader.Loader {})
	function audio (key:String, urls:String, autoDecode:Bool):phaser.loader.Loader;
	function tilemap (key:String, ?mapDataURL:String, ?mapData:Dynamic, ?format:Float):phaser.loader.Loader;
	function physics (key:String, ?dataURL:String, ?jsonData:Dynamic, ?format:String):phaser.loader.Loader;
	function bitmapFont (key:String, textureURL:String, ?xmlURL:String, ?xmlData:Dynamic, ?xSpacing:Float = 0, ?ySpacing:Float = 0):phaser.loader.Loader;
	function atlasJSONArray (key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.loader.Loader;
	function atlasJSONHash (key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.loader.Loader;
	function atlasXML (key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.loader.Loader;
	function atlas (key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic, ?format:Float):phaser.loader.Loader;
	function removeFile (type:String, key:String):Void;
	function removeAll ():Void;
	function start ():Void;
	function loadFile ():Void;
	@:overload(function (urls:Dynamic):Void {})
	function getAudioURL (urls:String):Void;
	function fileError (index:Float):Void;
	function fileComplete (index:Float):Void;
	function jsonLoadComplete (index:Float):Void;
	function csvLoadComplete (index:Float):Void;
	function dataLoadError (index:Float):Void;
	function xmlLoadComplete (index:Float):Void;
}
