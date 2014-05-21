package 
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import Classes.NativeCursor;
	
	import starling.core.Starling;
	import starling.events.EnterFrameEvent;
	import starling.events.TouchEvent;
	
	[SWF(width="500", height="500", frameRate="60", backgroundColor="#FFFFFF")]
	public class Startup extends Sprite
	{
		private var mStarling:Starling;
		
		public function Startup()
		{
			// These settings are recommended to avoid problems with touch handling
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			stage.addEventListener(TouchEvent.TOUCH, function() {
				new NativeCursor();
			});
			
			stage.addEventListener(EnterFrameEvent.ENTER_FRAME, function(event:EnterFrameEvent) {
				var x:int;
				trace(x+=event.passedTime);
			});
			
			// Create a Starling instance that will run the "Game" class
			mStarling = new Starling(Game, stage);
			mStarling.start();
		}
	}
}

