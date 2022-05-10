
IntroSubTextSize = 40 

IntroTagWidth = 25	



function onCreate()
	
	makeAnimatedLuaSprite('intro', 'cup/intro/the_thing2.0', -20, -10);
	addAnimationByPrefix('intro', 'idle', 'BOO instance 1', 18, false)
	scaleObject('intro', 1.05, 1.05);
	setObjectCamera('intro', 'other');
	addLuaSprite('intro', false);
end
	
	





function onStartCountdown()
	if songName == 'Satanic-Funkin' or songName == 'Technicolor-Tussle' then
	randomshit = string.format('intros/normal/intro-%i', getRandomInt(1,5))
	end
	if songName == 'Satanic-Funkin' then
	randomshit = string.format('intros/angry/intro-%i', getRandomInt(1,2))
	end
	playSound(randomshit)
	
end

