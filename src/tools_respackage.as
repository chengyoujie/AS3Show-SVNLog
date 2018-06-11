package
{
	import com.cyj.app.ToolsApp;
	import com.cyj.utils.md5.MD5;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	[SWF(width="650", height="620", backgroundColor="#444444", frameRate="30")]
	public class tools_respackage extends Sprite
	{
		public function tools_respackage()
		{
			if(this.stage)
				initStage();
			else
				this.addEventListener(Event.ADDED_TO_STAGE, initStage);
		}
		
		private function initStage(e:Event=null):void
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			App.init(this);
			ToolsApp.start();
		}
	}
}