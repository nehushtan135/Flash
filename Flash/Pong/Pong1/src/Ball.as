package  
{
	import flash.display.Bitmap;
	import flash.events.Event;
	import flash.display.Sprite;
	import flash.display.*;
	/**
	 * ...
	 * @author ElijahVarga
	 */
	public class Ball 
	{
		// embed code
		[Embed(source = "../lib/Ball.png")]
		public var ballClass:Class;
		public var ball:Bitmap = new ballClass();
		public var sHi:int;
		public var sWi:int;
		public var ballSpeedX:int = -3;
	    public var ballSpeedY:int = -2;
		
		public function Ball(s:Stage) 
		{
			ball.x = 275;
			ball.y = 200;
		    sHi = s.stageHeight;
		    sWi = s.stageWidth;
			s.addChild(ball);
		}
		public function getY():int {
			return this.ball.y;
		}
		public function startBall(e:Event):void
		{
			
			//make ball move
			ball.x += ballSpeedX;
			ball.y += ballSpeedY;
			
			//if ball hits left side
			if (ball.x <= ball.width / 2) {
				ball.x = ball.width / 2;
				ballSpeedX *= -1;
			}
			//if ball hits right side
			else if ( ball.x >= sWi- ball.width / 2) 
			{
				ball.x = sWi - ball.width / 2;
				ballSpeedX *= -1;
			}
			//if ball hits top
			if (ball.y <= ball.height / 2) {
				ball.y = ball.height / 2;
				ballSpeedY *= -1;
			}
			//if ball hits bottom
			else if ( ball.y >= sHi - ball.height / 2) 
			{
				ball.y = sHi - ball.height / 2;
				ballSpeedY *= -1;
			}
			
		}
	}

}