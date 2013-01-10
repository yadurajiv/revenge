/*
Copyright (c) 2010 Yadu Rajiv

This software is provided 'as-is', without any express or implied
warranty. In no event will the authors be held liable for any damages
arising from the use of this software.

Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it
freely, subject to the following restrictions:

   1. The origin of this software must not be misrepresented; you must not
   claim that you wrote the original software. If you use this software
   in a product, an acknowledgment in the product documentation would be
   appreciated but is not required.

   2. Altered source versions must be plainly marked as such, and must not be
   misrepresented as being the original software.

   3. This notice may not be removed or altered from any source
   distribution.
*/
package 
{
	import org.flixel.FlxGame;
	import com.yadurajiv.revenge.*;
	
	/**
	 * ...
	 * @author Yadu Rajiv
	 */
	[SWF(backgroundColor="#000000", frameRate="32", width="640", height="480")]
	public class Main extends FlxGame 
	{
		
		public function Main() {
			
			/**
			 * This is the main entry point into the game, where FlxGame gets initialized,
			 * and along with it a lot of data is set and variables made ready in the two
			 * utility functions FlxG and FlxU
			 * 
			 * You pass in 4 params to FlxGame() as you call super to init it. The first two
			 * are the width and height for your stage, the second is the initial FlxState
			 * class you want Flixel to show once everything is ready. The last param determines
			 * the zoom(think of this as pixel doubling in emulators if you may); if you pass in 320x240
			 * as your width and height, with a zoom of 2, the display will cover twice(640x480) the area.
			 */
			super(320, 240, menuMain, 2);
			
		}
		
	}
	
}