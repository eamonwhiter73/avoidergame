package 
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.geom.Point;
	
	import starling.core.Starling;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.display.DisplayObject;
	import flash.display.BitmapData;
	import flash.ui.MouseCursorData;
	import flash.ui.Mouse;
	import flash.display.IBitmapDrawable;
	
	[SWF(width="500", height="500", frameRate="30", backgroundColor="#FFFFFF")]
	public class Startup extends Sprite
	{
		private var mStarling:Starling;
		
		[Embed(source="Classes/Avatarpic.png")]
		public const Cursor:Class;
		
		public var cursor;
		private var cursorBitmapData:BitmapData;
		private var cursorData:MouseCursorData;
		private var cursorVector:Vector.<BitmapData>;
		
		public function Startup()
		{
			// These settings are recommended to avoid problems with touch handling
			// Create a Starling instance that will run the "Game" class
			mStarling = new Starling(Game, stage);
			mStarling.start();
			
			createCustomCursor();
			stage.addEventListener(TouchEvent.TOUCH, touchHandler);
			
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			/*stage.addEventListener(EnterFrameEvent.ENTER_FRAME, function(event:EnterFrameEvent) {
				var x:int;
				trace(x+=event.passedTime);
			});*/
		}
		
		private function touchHandler(event:TouchEvent):void
		{
			var touch:Touch = event.getTouch(cursor);
			var localPos:Point = touch.getLocation(cursor);
			trace("Touched object at position: " + localPos);
		}
		
		private function createCustomCursor():void
		{
			cursor = new Cursor();
			cursorBitmapData = new BitmapData(32, 32, true, 0x000000);
			cursorBitmapData.draw(cursor);
			
			cursorVector = new Vector.<BitmapData>();
			cursorVector[0] = cursorBitmapData;
			
			cursorData = new MouseCursorData();
			cursorData.hotSpot = new Point(0, 0);
			cursorData.data = cursorVector;
			
			Mouse.registerCursor("cursor", cursorData);
			Mouse.cursor = "cursor";
		}
	}
}

