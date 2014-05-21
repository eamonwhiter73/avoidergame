package
{
import Classes.AvatarEnemy;

import starling.animation.Juggler;
import starling.core.Starling;
import starling.display.Sprite;

import flash.geom.Point;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.ui.Mouse;
import flash.ui.MouseCursorData;

	public class Game extends Sprite
	{
		private var enemy:AvatarEnemy;
		//private var juggler:Juggler = Starling.juggler;
		
		[Embed(source="Classes/Avatarpic.png")]
		private const Cursor:Class;
		
		public function Game() 
		{	
			enemy = new AvatarEnemy();
			addChild(enemy);
			
			//var counter:int;
				
			/*juggler.delayCall(function():void {
			
				if(enemy.hitTest(cursor_D.hotSpot, true)) {
					var score:int = counter;
					trace(score);
				};
				
				counter++;
			}, 1.0);*/
			
			function createCustomCursor():void
			{
				var cursorBitmaps:Vector.<BitmapData> = new Vector.<BitmapData>();
				cursorBitmaps.push((new Cursor() as Bitmap).bitmapData);
				
				var mouseCursorData:MouseCursorData = new MouseCursorData();
				mouseCursorData.data        = cursorBitmaps;
				mouseCursorData.frameRate   = 30;
				mouseCursorData.hotSpot     = new Point(0, 0);
				
				Mouse.registerCursor("customCursor", mouseCursorData);
				Mouse.cursor = "customCursor";
			}
			
			createCustomCursor();
		}
	}
}