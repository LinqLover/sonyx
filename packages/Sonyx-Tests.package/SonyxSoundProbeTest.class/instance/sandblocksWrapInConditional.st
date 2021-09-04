support - sandblocks
sandblocksWrapInConditional
	 
	| editor |
	editor := self methodAnnotationSandblocksEditor.
	
	editor artefacts first statements first performAction: #wrapAsArgument.
	editor selection acceptCharacter: $a.
	editor selection currentTextMorph insertString: 'rg'.
	
	editor performForSelection: #wrapInMessageSend.
	editor selection currentTextMorph insertString: 'even'.
	
	editor performForSelection: #moveTextCursorRight.
	editor selection currentTextMorph insertString: 'ifTrue'.