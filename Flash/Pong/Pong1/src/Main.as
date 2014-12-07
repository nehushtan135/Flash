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
		


		public function Main():void 
		{
			/*if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			*/
			// starting positions:
			// paddle 1
			paddle1.x = 20;
			paddle1.y = 200;
			
			//space to begin
			spaceToBegin.x = 275;
			spaceToBegin.y = 200;
		
			
			// paddle 2 
			paddle2.x = 530;
			paddle2.y = 200;
			// add 
			addChild(spaceToBegin);
			//addChild(paddle1);
			addChild(paddle2);
			
			init();
		}
		
		
		/*private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// starting positions:
			// paddle 1
			paddle1.x = 20;
			paddle1.y = 180;
			
			// ball 	
			ball.x = 275;
			ball.y = 200;
			
			// paddle 2 
			paddle2.x = 530;
			paddle2.y = 180;
			// add 
			
		}*/
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
		    stage.addEventListener(KeyboardEvent.KEY_DOWN, tHPad.movePad);
			
		}
		public function playerLoop(e:Event):void
		{
			
			//stage.addEventListener(KeyboardEvent.KEY_DOWN, tHPad.movePad); 
		}
		
	}
	
}