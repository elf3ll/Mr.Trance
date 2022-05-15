function onCreate()
	--Editar todas las notas
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Chequea si la nota es una nota de tipo Trance
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bullet Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'note/bulletnotes'); --Cambia la textura de la nota por la de la nota de tipo Trance
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '500'); --Te quita toda la vida
		end
	end
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

	
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Switchback' then

		noteTweenX("NoteMove1", 4, 725, 0.5, bounceIn)
		noteTweenX("NoteMove2", 6, 960, 0.5, bounceIn)
		noteTweenX("NoteMove3", 5, 845, 0.5, bounceIn)
		noteTweenX("NoteMove4", 7, 1075, 0.5, bounceIn)

	end
  end





