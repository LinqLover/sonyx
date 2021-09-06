support
switchProbeToSandblocksEditor
	 
	^ self annotationSandblocksEditor ifNil: [
		self annotationMorph toggleEditor.
		self annotationSandblocksEditor].