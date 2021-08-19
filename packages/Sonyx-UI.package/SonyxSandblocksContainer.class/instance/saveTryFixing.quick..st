artefact protocol
saveTryFixing: aBoolean quick: aQuickBoolean
	 
	| text |
	self allBlocksDo: [:block | block valid ifFalse: [aBoolean ifFalse: [^ false] ifTrue: [block tryFixIfFail: [^ false]]]].
	
	text := aQuickBoolean ifTrue: [self body sourceString] ifFalse: [self body prettySourceString].
	
	^ (self annotationMorph acceptExpression: text) ifNil: [false]