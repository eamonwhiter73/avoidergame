package Classes
{
	
	import starling.animation.IAnimatable;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	
	public class AvatarEnemy extends Sprite implements IAnimatable
	{
		[Embed(source='Enemypic.png')]
		private static var Enemypic:Class;
		
		private var texture:Texture = Texture.fromBitmap(new Enemypic());
		
		private var image:Image = new Image(texture);
		
		public function AvatarEnemy() 
		{				
			image.x = 0;
			image.y = 200;
			
			this.addChild(image);			
		}
		
		public function advanceTime(time:Number):void {/*ADD SOMETHING HERE (NOT SURE WHAT)*/};
	}
}