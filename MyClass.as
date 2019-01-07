package  {
	
	import flash.display.MovieClip;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.net.URLRequest;
	
	
	public class MyClass extends MovieClip {
		
		private var mLdr:Loader;
		
		
		public function MyClass() {
			
			initialize();
			
		}
		
		private function initialize():void {
			trace( 'repair03_atHome' );
			
			stage.color = 0xFF00FF;
			
			mLdr = new Loader();
			mLdr.contentLoaderInfo.addEventListener(Event.COMPLETE,onComplete);
			mLdr.load(new URLRequest('asset/img/pic.jpg'),null);
		}
		
		
		private function onComplete($evt:Event):void {
			var kimg:Bitmap = mLdr.content as Bitmap;
			kimg.height = 500;
			kimg.scaleX = kimg.scaleY;		
			kimg.alpha = 0.5;
			this.addChild( kimg );
			
			
			
		};
		
		
		
	}
	
}
