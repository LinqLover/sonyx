support
switchProbeToTextEditor 
	^ self annotationTextMorph ifNil: [
		self annotationMorph toggleEditorButtonClicked.
		self annotationTextMorph].