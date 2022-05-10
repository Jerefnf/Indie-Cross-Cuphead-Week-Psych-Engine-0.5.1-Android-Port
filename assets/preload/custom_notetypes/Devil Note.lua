function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Devil Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'devilNOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); 
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.4'); 
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); 
			end
		end
	end
end


function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Devil Note' then
		
	end
end
 
