artefact protocol
saveTryFixing: aBoolean quick: aQuickBoolean
	 
	| text |
	(super saveTryFixing: aBoolean quick: aQuickBoolean) ifFalse: [^ false].
	
	text := aQuickBoolean
		ifTrue: [self body sourceString]
		ifFalse: [self body prettySourceString].
	
	^ (self annotationMorph acceptExpression: text) ifNil: [false]