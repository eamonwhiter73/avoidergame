package
{

import flash.geom.Point;

import Classes.AvatarEnemy;
import Classes.NativeCursor;

import starling.animation.Juggler;
import starling.core.Starling;
import starling.display.Sprite;
import starling.events.TouchEvent;

//import starling.events.TouchPhase;

//import starling.events.EnterFrameEvent;

	public class Game extends Sprite
	{
		//private var juggler:Juggler = Starling.juggler;
		
		private var enemy:AvatarEnemy;
		
		/*public function onEnterFrame(event:EnterFrameEvent):void
		{
			trace("Time passed since last frame: " + event.passedTime);

			if(enemy.hitTest(new Point(cursor.getX(e), cursor.getY(e)), true)) {
				var score:int = counter;
				trace(score);
			};
			counter++;
		}*/
		
		public function Game() 
		{	
			enemy = new AvatarEnemy();
			addChild(enemy);
			
			/*juggler.add(enemy);
			
			juggler.delayCall(function(e:TouchEvent):void {
				if(enemy.hitTest(new Point(cursor.getX(e), cursor.getY(e)), true)) {
					var score:int = juggler.elapsedTime;
					trace(score);
				};
				juggler.advanceTime(1);
			}, 1);*/
		}
	}
}