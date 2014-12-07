package  
{
	import flash.display.Bitmap;
	import flash.display.Stage;
	import flash.events.Event;
	/**
	 * ...
	 * @author ElijahVarga
	 */
	public class aiPaddle 
	{
		[Embed(source = "../lib/paddle.png")]
		private var paddleClass:Class;
		private var aPad:Bitmap = new paddleClass();
		public var cpuSpeed:int = 5;
		public var sHi:int;
		public var sWi:int;
		public function aiPaddle(s:Stage) 
		{
			aPad.x = 530;
			aPad.y = 200;
			sHi = s.stageHeight;
			sWi = s.stageWidth;
			s.addChild(aPad);
			
		}
		
		// the cpu pad is going off screen, need to fix this!
		// tommorow....
		
		public function startCpu(e:Event, bY:int):void {
		    if (aPad.y < bY - 10) {
					aPad.y += cpuSpeed;
			}
			if (aPad.y > bY +10) {
				aPad.y -= cpuSpeed;
			}
				
		}
		
	}

}