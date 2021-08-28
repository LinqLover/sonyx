*Sonyx-Core-babylonian
sonyxBpRecompileAfterUpdatingAnnotations: aBlock
	 
	| method sourceText styler newAnnotations result |
	method := self methodClass >> self selector.
	styler := BPStyler new
		selectedMethod: method methodReference;
		yourself.
	sourceText := styler format: method getSource.
	
	newAnnotations := aBlock value.
	sourceText removeAttributesThat: [:attr |
		((attr respondsTo: #anchoredMorph) and: [attr anchoredMorph isBPAnnotationMorph]) ifTrue: [
			newAnnotations
				detect: [:newAnnotation | newAnnotation id = attr anchoredMorph annotation id]
				ifFound: [:newAnnotation | attr anchoredMorph annotation: newAnnotation]].
		false].
	
	result := self methodClass compile: (styler unstyledTextFrom: sourceText).
	result ifNotNil: [
		(method := self methodClass >> self selector) bpAnnotations do: [:annotation | annotation methodReference: method methodReference; register]].
	^ result