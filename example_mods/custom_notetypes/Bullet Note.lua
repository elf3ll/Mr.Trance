function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Bullet Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bullet Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'note/bulletnotes'); --Change texture
			-- setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0); --Change amount of health to take when you miss like a fucking moron
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '500'); --Default value is: 0.0475, health lost on miss
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	
	if noteType == 'Bullet Note' then

                noteTweenX("NoteMove1", 4, 1075, 0.5, bounceIn)
                noteTweenX("NoteMove2", 6, 845, 0.5, bounceIn)
                noteTweenX("NoteMove3", 5, 960, 0.5, bounceIn)
                noteTweenX("NoteMove4", 7, 725, 0.5, bounceIn)
             
				runTimer("Switchback", 3, 1)

				end
	end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Bullet Note' then
		
	end
end

	
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Switchback' then

		noteTweenX("NoteMove1", 4, 725, 0.5, bounceIn)
		noteTweenX("NoteMove2", 6, 960, 0.5, bounceIn)
		noteTweenX("NoteMove3", 5, 845, 0.5, bounceIn)
		noteTweenX("NoteMove4", 7, 1075, 0.5, bounceIn)

	end
  end





