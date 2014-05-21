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
	
	[SWF(width="500", height="500", frameRate="30", backgroundColor="#FFFFFF")]
	public class Startup extends Sprite
	{
		private var mStarling:Starling;
		
		[Embed(source="Classes/Avatarpic.png")]
		public const Cursor:Class;
		
		public var cursor:DisplayObject;
		
		public function Startup()
		{
			// These settings are recommended to avoid problems with touch handling
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			createCustomCursor();
			stage.addEventListener(TouchEvent.TOUCH, touchHandler);
			
			/*stage.addEventListener(EnterFrameEvent.ENTER_FRAME, function(event:EnterFrameEvent) {
				var x:int;
				trace(x+=event.passedTime);
			});*/
			
			// Create a Starling instance that will run the "Game" class
			mStarling = new Starling(Game, stage);
			mStarling.start();
		}
		
		private function touchHandler(event:TouchEvent):void
		{
			var touch:Touch = event.getTouch(cursor);
			var localPos:Point = touch.getLocation(cursor);
			trace("Touched object at position: " + localPos);
		}
		
		public function createCustomCursor():void
		{
			var cursorBitmaps:Vector.<BitmapData> = new Vector.<BitmapData>();
			cursorBitmaps.push((new Cursor() as Bitmap).bitmapData);
			
			var mouseCursorData:MouseCursorData = new MouseCursorData();
			mouseCursorData.data        = cursorBitmaps;
			mouseCursorData.frameRate   = 30;
			mouseCursorData.hotSpot     = new Point(0, 0);
			
			Mouse.registerCursor("customCursro", mouseCursorData);
			Mouse.cursor = "customCursor";
		}
	}
}

