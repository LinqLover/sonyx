*Sonyx-Core
sonyxBpRecompileAfterUpdatingAnnotations: aBlock
	 
	| method sourceText styler newAnnotations |
	method := self methodClass >> self selector.
	styler := BPStyler new
		selectedMethod: method;
		yourself.
	sourceText := styler format: method getSource.
	newAnnotations := aBlock value.
	sourceText removeAttributesThat: [:attr |
		((attr respondsTo: #anchoredMorph) and: [attr anchoredMorph isBPAnnotationMorph]) ifTrue: [
			newAnnotations
				detect: [:newAnnotation | newAnnotation id = attr anchoredMorph annotation id]
				ifFound: [:newAnnotation | attr anchoredMorph annotation: newAnnotation]].
		false].
	^ self methodClass compile: (styler unstyledTextFrom: sourceText)