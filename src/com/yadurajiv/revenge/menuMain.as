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
	public class menuMain extends FlxState 
	{
		
		[Embed(source = 'data/bg.png')] private var img_bg:Class;
		[Embed(source = 'data/bg_eye_float.png')] private var img_bgEyeFloat:Class;
		[Embed(source = 'data/btnStart1.png')] private var img_btnStartOver:Class;
		[Embed(source = 'data/btnStart0.png')] private var img_btnStartUp:Class;
		
		private var _gameTitle:FlxText;
		private var _bg:FlxSprite;
		private var _bgEye:FlxSprite;
		private var _btnStart:FlxButton;
		
		override public function create():void 
		{
			
			/**
			 * fade in from black
			 */
			FlxG.flash.start(0xff000000, 3);
			
			/**
			 * show the mouse
			 */
			FlxG.mouse.show();
			
			/**
			 * add the game text and set some formatting options along with a shadow; you can also
			 * pass in your own font if you have one embedded or it uses Flixel's default one
			 */
			_gameTitle = new FlxText(10, 90, 300, "Revenge of the Eye from Outer Space!");
			_gameTitle.setFormat(null, 16, 0xffffff, "center", 0xff00ff);
			add(_gameTitle);
			
			/**
			 * adding the background image 320x240
			 */
			_bg = new FlxSprite(0, 0, img_bg);
			add(_bg);
			
			/**
			 * adding the alien eye image and adding constant angular velocity of 40 also limiting
			 * the maxAngular to 40
			 */
			_bgEye = new FlxSprite(137, 100, img_bgEyeFloat);
			_bgEye.angularVelocity = 40;
			_bgEye.maxAngular = 40;
			add(_bgEye);
			
			/**
			 * adding a button with an anon call back function
			 */
			_btnStart = new FlxButton(137, 195, function():void {
				FlxG.fade.start(0xff000000, 2, function():void { // FlxG.fade.start also takes in a function as the thrid param which is called when the fade completes
					FlxG.state = new level1; // switching states are as simple as assigning a new state class to the FlxG.state variable which holds the current state.
				});
			});
			
			/**
			 * we add a couple of sprites to the button to act as normal and mouseover states
			 */
			_btnStart.loadGraphic(new FlxSprite(0, 0, img_btnStartUp), new FlxSprite(0, 0, img_btnStartOver));
			add(_btnStart);
			
			/**
			 * some credit text
			 */
			add(new FlxText(280, 200, 40, "by Yadu Rajiv"));
			trace(_btnStart.x, _btnStart.y,_btnStart.angle);
			
		}
		
		override public function update():void 
		{
			/**
			 * update the sccene
			 */
			super.update();
			
		}
	}
	
}