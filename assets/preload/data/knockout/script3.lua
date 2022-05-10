local allowCountdown = false;

local allowCountdownEnd = false;


function onStepHit()
    if curStep == 1162 then
        makeAnimatedLuaSprite('MugsDie','MugsDie', 1160, 360)
        luaSpriteAddAnimationByPrefix('MugsDie', 'idle', 'Mugman instance 1', 20, true);
       setLuaSpriteScrollFactor('MugsDie', 1, 1.2);
	   scaleObject('MugsDie', 1.3, 1.3);
	   addLuaSprite('MugsDie',true)
    end
   if curStep == 1174 then
      removeLuaSprite('MugsDie');
      makeAnimatedLuaSprite('MugsDie2','MugsDie', 1160, 360);
      luaSpriteAddAnimationByPrefix('MugsDie2', 'idle', 'MUGMANDEAD YES instance 1', 20, true);
      setLuaSpriteScrollFactor('MugsDie2', 1, 1.2);
      scaleObject('MugsDie2', 1.3, 1.3);
	  addLuaSprite('MugsDie2', true);
	  playSound('knockout',1);
    end
   if curStep == 1186 then
      removeLuaSprite('MugsDie2');
      makeAnimatedLuaSprite('MugsDie3','MugsDie', 1160, 360);
      luaSpriteAddAnimationByPrefix('MugsDie3', 'idle', 'MUGMANDEAD died instance 1', 20, true);
      setLuaSpriteScrollFactor('MugsDie3', 1, 1.2);
      scaleObject('MugsDie3', 1.3, 1.3);
	  addLuaSprite('MugsDie3', true)
	  runTimer('MugsDie2', 4);
   end
end

function onTimerCompleted(tag, loops, loopsleft)
     if tag == 'A knock' then
        removeLuaSprite('A knock');
    end

end