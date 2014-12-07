package 
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	/**
	 * ...
	 * @author ElijahVarga
	 */
	public class Main extends Sprite 
	{
		// embed code
	    [Embed(source = "../lib/spaceToBegin.png")]
		private var spaceToBeginClass:Class;
		private var spaceToBegin:Bitmap = new spaceToBeginClass();
		
		[Embed(source = "../lib/paddle.png")]
		private var paddleClass:Class;
		private var paddle1:Bitmap = new paddleClass();
		private var paddle2:Bitmap = new paddleClass();
		
		public var tempBall:Ball = new Ball(stage);
		public var tHPad:HumanPaddle = new HumanPaddle(stage);
		public var cpuPad:aiPaddle = new aiPaddle(stage);
		


		public function Main():void 
		{
			//space to begin
			spaceToBegin.x = 275;
			spaceToBegin.y = 200;
			
			// add 
			addChild(spaceToBegin);			
			init();
		}
		
		private function init():void
		{
			stage.addEventListener(KeyboardEvent.KEY_DOWN, reportSpace);
		}
		
		public function reportSpace(event:KeyboardEvent):void {
			if (event.keyCode == Keyboard.SPACE) {
				removeChild(spaceToBegin);
				stage.removeEventListener(KeyboardEvent.KEY_DOWN, reportSpace);
				stage.addEventListener(Event.ENTER_FRAME, gameLoop);
			}
			
		}
		private function gameLoop(e:Event):void
		{  
		    tempBall.startBall(e);
			cpuPad.startCpu(e, tempBall.getY());
		    stage.addEventListener(KeyboardEvent.KEY_DOWN, tHPad.movePad);
			
		}
		
	}
	
}