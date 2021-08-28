ui
asMorph
	 
	| newMorph |
	newMorph := SonyxProbeAnnotationMorph new
		annotation: self;
		yourself.
	self updateTextAnchorPropertiesOf: newMorph.
	^ newMorph