support
switchProbeToSandblocksEditor
	 
	^ self annotationSandblocksEditor ifNil: [
		self annotationMorph toggleEditorButtonClicked.
		self annotationSandblocksEditor].