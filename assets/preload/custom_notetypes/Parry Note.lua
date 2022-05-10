function onCreate()
	
	for i = 0, getProperty('unspawnNotes.length')-1 do
		
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Parry Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'PARRY_assets');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.4');  
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.3'); 
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
	
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Parry Note' then
	  playSound('parry')
	  triggerEvent('Play Animation','attack','BF');
	  triggerEvent('Play Animation','hit','Dad');
	end
end

