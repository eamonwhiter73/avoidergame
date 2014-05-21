package 
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import starling.events.TouchEvent;
	
	import starling.core.Starling;
	import starling.events.Touch;
	import flash.geom.Point;

	//import starling.events.EnterFrameEvent;
	//import starling.events.TouchEvent;
	
	[SWF(width="500", height="500", frameRate="60", backgroundColor="#FFFFFF")]
	public class Startup extends Sprite
	{
		private var mStarling:Starling;
		
		[Embed(source="Classes/Avatarpic.png")]
		private const Cursor:Class;
		
		public var cursor;
		
		public function Startup()
		{
			// These settings are recommended to avoid problems with touch handling
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			cursor = new Cursor();
			this.addEventListener(TouchEvent.TOUCH, onTouch);
			
			/*stage.addEventListener(EnterFrameEvent.ENTER_FRAME, function(event:EnterFrameEvent) {
				var x:int;
				trace(x+=event.passedTime);
			});*/
			
			// Create a Starling instance that will run the "Game" class
			mStarling = new Starling(Game, stage);
			mStarling.start();
		}
		
		private function onTouch(event:TouchEvent):void
		{
			var TouchPhase:Object;
			var touch:Touch = event.getTouch(cursor, TouchPhase.MOVED);
			if (touch)
			{
				var localPos:Point = touch.getLocation(cursor);
				trace("Touched object at position: " + localPos);
			}
		}
	}
}

