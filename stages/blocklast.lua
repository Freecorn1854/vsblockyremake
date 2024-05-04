
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
	
	makeLuaSprite('votinggrass', 'votinggrass', -1100, -300);
	setScrollFactor('votinggrass', 0.9, 0.9);
	scaleObject('votinggrass', 2, 1.5);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeAnimatedLuaSprite('dancin', 'dancin', -220, 400);
		addAnimationByPrefix('dancin', 'idle', 'speakerleft', 24, true);
		setScrollFactor('dancin', 0.95, 0.95);
		scaleObject('dancin', 0.5, 0.5);
	end

	addLuaSprite('sky', false);
	addLuaSprite('votinggrass', false);
	addLuaSprite('dancin', false);
end