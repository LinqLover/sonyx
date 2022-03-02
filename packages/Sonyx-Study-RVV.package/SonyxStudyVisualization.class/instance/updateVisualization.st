updating
updateVisualization

	self removeAllMorphs.
	self data isEmpty ifFalse: [self addMorph: self createGraph fullFrame: LayoutFrame fullFrame].
	
	self forceUpdate ifTrue: [ | isSentDuringStep |
		isSentDuringStep := (thisContext findContextSuchThat: [:ctx | ctx selector = #step and: [ctx receiver isKindOf: SonyxStudyVisualization]]) notNil.
		isSentDuringStep ifFalse: [self refreshWorld]]