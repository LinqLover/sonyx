support
acceptProbeText: aStringOrText
	 
	| textMorph |
	textMorph := self annotationTextMorph.
	self testCase assert: textMorph visibleInWorld.
	
	self type: aStringOrText into: self annotationTextMorph.
	textMorph accept.
	self refreshAnnotationMorphs.
	
	self testCase
		deny: textMorph hasUnacceptedEdits;
		deny: self annotationMorph containingBrowser codeTextMorph hasUnacceptedEdits.