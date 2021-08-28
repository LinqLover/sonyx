actions
toggleEditorButtonClicked
	 

	expressionFieldMorph owner visible
		ifTrue: [expressionFieldMorph owner hide; disableLayout: true.
			expressionEditorMorph owner show; disableLayout: false]
		ifFalse: [
			expressionEditorMorph owner hide; disableLayout: true.
			expressionFieldMorph owner show; disableLayout: false.
			]