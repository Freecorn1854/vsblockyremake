
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('stagebackblock', 'stagebackblock', -600, -300);
	setScrollFactor('stagebackblock', 0.9, 0.9);
	
	makeLuaSprite('stagefrontblock', 'stagefrontblock', -650, 600);
	setScrollFactor('stagefrontblock', 0.9, 0.9);
	scaleObject('stagefrontblock', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeLuaSprite('stagecurtainsblock', 'stagecurtainsblock', -500, -300);
		setScrollFactor('stagecurtainsblock', 1.3, 1.3);
		scaleObject('stagecurtainsblock', 0.9, 0.9);
	end

	addLuaSprite('stagebackblock', false);
	addLuaSprite('stagefrontblock', false);
	addLuaSprite('stagecurtainsblock', false);
end