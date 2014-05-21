package
{
//import flash.display.Bitmap;
//import flash.geom.Point;

import Classes.AvatarEnemy;

import starling.animation.Juggler;
import starling.core.Starling;
import starling.display.Sprite;
import starling.events.EnterFrameEvent;
/*import starling.events.Touch;
import starling.events.TouchEvent;
import starling.events.TouchPhase;*/

//import starling.events.EnterFrameEvent;

	public class Game extends Sprite
	{
		private var juggler:Juggler = Starling.juggler;
		
		private var enemy:AvatarEnemy;
		
		public function onEnterFrame(event:EnterFrameEvent):void
		{
			trace("Time passed since last frame: " + event.passedTime);

			/*if(enemy.hitTest(new Point(cursor.getX(e), cursor.getY(e)), true)) {
				var score:int = counter;
				trace(score);
			};
			counter++;*/
		}
		
		public function Game() 
		{	
			enemy = new AvatarEnemy();
			this.addChild(enemy);
			juggler.add(enemy);
			
			/*juggler.delayCall(function(e:TouchEvent):void {
				
				if(enemy.hitTest(new Point(cursor.getX(e), cursor.getY(e)), true)) {
					var score:int = counter;
					trace(score);
				};
				
				counter++;
			}, 30);*/
		}
	}
}