support
switchProbeToTextEditor
	 

	^ self annotationTextMorph ifNil: [
		self annotationMorph toggleEditor.
		self annotationTextMorph].