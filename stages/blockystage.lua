
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('sky', 'sky', -600, -300);
	setScrollFactor('sky', 0.3, 0.3);
	scaleObject('sky', 1.75, 1.75);
	
	makeLuaSprite('grass', 'grass', -325, -200);
	setScrollFactor('grass', 0.9, 0.9);
	scaleObject('grass', 1.5, 1.5);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeLuaSprite('recoveryc', 'recoveryc', -500, -240);
		setScrollFactor('recoveryc', 1.3, 1.3);
		scaleObject('recoveryc', 0.9, 0.9);
	end

	addLuaSprite('sky', false);
	addLuaSprite('grass', false);
	addLuaSprite('recoveryc', false);
end