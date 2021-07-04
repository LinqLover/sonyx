ui
asMorph
	
	| newMorph |
	newMorph := SonyxBPAnnotationMorph new
		annotation: self;
		yourself.
	self updateTextAnchorPropertiesOf: newMorph.
	^ newMorph