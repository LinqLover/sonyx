support - sandblocks
sandblocksAccept

	| editor |
	editor := self methodAnnotationSandblocksEditor.
	
	editor save.
	self probeTester updateAnnotationMorphs.
	self
		deny: editor hasUnsavedChanges;
		deny: self probeTester browserTextMorph hasUnacceptedEdits.