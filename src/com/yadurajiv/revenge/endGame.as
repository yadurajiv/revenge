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
package com.yadurajiv.revenge
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Yadu Rajiv
	 */
	public class endGame extends FlxState 
	{
		
		[Embed(source = 'data/ok1.png')] private var img_okOver:Class;
		[Embed(source = 'data/ok0.png')] private var img_okUp:Class;
		
		private var _gameTitle:FlxText;
		private var _btnStart:FlxButton;
		
		override public function create():void 
		{
			
			/**
			 * fade in to the scene from black
			 */
			FlxG.flash(0xff000000, 3);
			
			/**
			 * show our mouse!
			 */
			FlxG.mouse.show();
			
			/**
			 * add some text to the stage as we did earlier
			 */
			_gameTitle = new FlxText(10, 90, 300, "And so the journey begins!!");
			_gameTitle.setFormat(null, 16, 0xffffff, "center", 0xff00ff);
			add(_gameTitle);
			
			/**
			 * add a button which will take us back to the main menu state
			 */
			_btnStart = new FlxButton(137, 195, "", function():void {
				FlxG.fade(0xff000000, 2, function():void {
					FlxG.switchState(new menuMain);
				});
			});
			
			/**
			 * load sprites for different button states
			 */
			_btnStart.loadGraphic(img_okUp);
			add(_btnStart);
			
			_btnStart.onOver = function():void {
				_btnStart.loadGraphic(img_okOver);
			};
			
			_btnStart.onOut = function():void {
				_btnStart.loadGraphic(img_okUp);
			};
			
		}
		
		override public function update():void 
		{
			/**
			 * update everything on stage..
			 */
			super.update();
			
		}
	}
	
}