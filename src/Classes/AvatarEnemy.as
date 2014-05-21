package Classes
{
	
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.textures.Texture;
	
	public class AvatarEnemy extends Sprite
	{
		[Embed(source='Enemypic.png')]
		private static var Enemypic:Class;
		
		private var texture:Texture = Texture.fromBitmap(new Enemypic());
		
		private var image:Image = new Image(texture);
		
		public function AvatarEnemy() 
		{
			var texture:Texture = Texture.fromBitmap(new Enemypic());
			
			// display the texture through an Image.
			
			image.x = 0;
			image.y = 200;
			
			addChild(image);			
		}
	}
}