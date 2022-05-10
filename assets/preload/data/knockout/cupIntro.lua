
IntroSubTextSize = 40 

IntroTagWidth = 25	



	
function onUpdate()
	makeLuaSprite('JukeBox', 'musicBar', 0-IntroTagWidth, 15)
	setObjectCamera('JukeBox', 'other')
	setProperty('JukeBox.y', 450);
	setProperty('JukeBox.alpha', 0.7);
	setProperty('JukeBox.x', 1400);
	addLuaSprite('JukeBox', true)

	
	if songName == 'Technicolor-Tussle' then
		makeLuaText('JukeBoxSubText', 'BLVKAROT - Technicolor Tussle', 0-IntroTagWidth, 60)
		setTextAlignment('JukeBoxSubText', 'left')
		setObjectCamera('JukeBoxSubText', 'other')
		setProperty('JukeBoxSubText.alpha', 0.7);
		setTextSize('JukeBoxSubText', IntroSubTextSize)
		setProperty('JukeBoxSubText.y', 450);
		setProperty('JukeBoxSubText.x', 1400);
		setTextFont('JukeBoxSubText', 'ZillaSlabBold.ttf')
		addLuaText('JukeBoxSubText')
	end
	if songName == 'Snake-Eyes' then
		makeLuaText('JukeBoxSubText', 'Mike Geno - Snake Eyes', 0-IntroTagWidth, 60)

		setTextAlignment('JukeBoxSubText', 'left')

		setObjectCamera('JukeBoxSubText', 'other')
		setProperty('JukeBoxSubText.alpha', 0.7);
		setTextSize('JukeBoxSubText', IntroSubTextSize)
		setProperty('JukeBoxSubText.y', 450);
		setProperty('JukeBoxSubText.x', 1400);
		setTextFont('JukeBoxSubText', 'ZillaSlabBold.ttf')
		addLuaText('JukeBoxSubText')
	end
	if songName == 'Knockout' or songName == 'Test' then
		makeLuaText('JukeBoxSubText', 'Orenji Music - Knockout', 0-IntroTagWidth, 60)

		setTextAlignment('JukeBoxSubText', 'left')

		setObjectCamera('JukeBoxSubText', 'other')
		setProperty('JukeBoxSubText.alpha', 0.7);
		setTextSize('JukeBoxSubText', 40)
		setProperty('JukeBoxSubText.y', 450);
		setProperty('JukeBoxSubText.x', 1400);
		setTextFont('JukeBoxSubText', 'ZillaSlabBold.ttf')
		addLuaText('JukeBoxSubText')
	end
	setObjectOrder('intro', 4)
	setObjectOrder('JukeBox', 2)
	setObjectOrder('ready', 1)
	setObjectOrder('camera', 3)
	setProperty('skipCountdown', true)
end


function onSongStart()
	
	doTweenX('MoveInTwo', 'JukeBox', 550, 1, 'CircInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 630, 1, 'CircInOut')
	runTimer('JukeBoxWait', 6, 1)
end


function onTimerCompleted(tag, loops, loopsLeft)
	
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutTwo', 'JukeBox', 1300, 1.5, 'CircInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', 1380, 1.5, 'CircInOut')
	end
	if tag == 'goodbyejuke' then
		removeLuaSprite('JukeBox', true)
		removeLuaText('JukeBoxSubText', true)
	end
end

function onUpdate()
	if getProperty('ready.animation.curAnim.finished') then
		removeLuaSprite('ready', true)
		runTimer('goodbyejuke', 5)
	end
	if getProperty('intro.animation.curAnim.finished') then
		removeLuaSprite('intro', true)
	end
end

function onCreatePost()
	setProperty('ready.scale.x', 0.8)
	setProperty('ready.scale.y', 0.8)
end

function onStartCountdown()
	if songName == 'Snake-Eyes' or songName == 'Technicolor-Tussle' then
	randomshit = string.format('intros/normal/intro-%i', getRandomInt(1,5))
	end
	if songName == 'Knockout' then
	randomshit = string.format('intros/angry/intro-%i', getRandomInt(1,2))
	end
	playSound(randomshit)
	
end


