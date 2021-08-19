support - sandblocks
sandblocksWrapInConditional

	| editor |
	editor := self methodAnnotationSandblocksEditor.
	
	editor selectedArtefact statements first performAction: #wrapAsArgument.
	editor selection acceptCharacter: $a.
	editor selection currentTextMorph insertString: 'rg'.
	
	editor selection performAction: #wrapInMessageSend.
	editor selection currentTextMorph insertString: 'even'.
	
	editor selection performAction: #moveTextCursorRight.
	editor selection currentTextMorph insertString: 'ifTrue'.