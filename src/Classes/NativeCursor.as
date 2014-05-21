package Classes {
	import flash.display.BitmapData;
	import starling.display.Sprite;
	import flash.geom.Point;
	import flash.ui.Mouse;
	import flash.ui.MouseCursorData;
	
	import starling.events.TouchEvent;
	
	public class NativeCursor extends Sprite {
		
		[Embed(source="Avatarpic.png")]
		private const Cursor:Class;
		
		private var cursorBitmapData:BitmapData;
		private var cursorData:MouseCursorData;
		private var cursorVector:Vector.<BitmapData>;
		
		public function NativeCursor() {
			if(Mouse.supportsNativeCursor){
				setupMouseCursor();
			}
			else {
				trace("error");
			}
		}
		
		private function setupMouseCursor():void {
			var angryCursor = new Cursor();
			cursorBitmapData = new BitmapData(60, 60, true, 0x000000);
			cursorBitmapData.draw(angryCursor);
			
			cursorVector = new Vector.<BitmapData>();
			cursorVector[0] = cursorBitmapData;
			
			cursorData = new MouseCursorData();
			cursorData.hotSpot = new Point(0, 0);
			cursorData.data = cursorVector;
			
			Mouse.registerCursor("angryCursor", cursorData);
			Mouse.cursor = "angryCursor";
		}
		
		public function getX(e:TouchEvent):int {
			return e.getTouch(cursorData[0]).globalX
		}
		
		public function getY(e:TouchEvent):int {
			return e.getTouch(cursorData[0]).globalY
		}
	}
}