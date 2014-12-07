package  
{
	import flash.display.Bitmap;
	import flash.display.Stage;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.events.Event;
	/**
	 * ...
	 * @author ElijahVarga
	 */
	public class HumanPaddle 
	{
		[Embed(source = "../lib/paddle.png")]
		private var paddleClass:Class;
		private var Hpaddle:Bitmap = new paddleClass();
		public var sHi:int;
		public var sWi:int;
		
		public function HumanPaddle(s:Stage) 
		{
			Hpaddle.x = 20;
			Hpaddle.y = 200;
			sHi = s.stageHeight;
		    sWi = s.stageWidth;
			s.addChild(Hpaddle);
		}
		public function movePad(e:KeyboardEvent):void
		{
			if (Hpaddle.y <= Hpaddle.height / 2) {
				switch(e.keyCode) {
					case Keyboard.UP:
						Hpaddle.y += 2;					
						break;
				
					case Keyboard.DOWN:
					
						break;
				
					case Keyboard.LEFT:
				
						break;
				
					case Keyboard.RIGHT:
				
						break;
				
				}
			}
		}
	}

}