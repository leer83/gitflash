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
			trace( 'repair01_atHome' );
			
			mLdr = new Loader();
			mLdr.contentLoaderInfo.addEventListener(Event.COMPLETE,onComplete);
			mLdr.load(new URLRequest('asset/img/pic.jpg'),null);
		}
		
		
		private function onComplete($evt:Event):void {
			var kimg:Bitmap = mLdr.content as Bitmap;
			kimg.width = 500;
			kimg.scaleY = kimg.scaleX;			
			this.addChild( kimg );
			
			
			
		};
		
		
		
	}
	
}
