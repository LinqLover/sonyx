support - sandblocks
sandblocksAccept

	| editor |
	editor := self methodAnnotationSandblocksEditor.
	
	editor save.
	self
		deny: editor hasUnsavedChanges;
		deny: self methodAnnotationMorph containingBrowser codeTextMorph hasUnacceptedEdits.