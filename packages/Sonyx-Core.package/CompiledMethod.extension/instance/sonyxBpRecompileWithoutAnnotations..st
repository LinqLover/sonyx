*Sonyx-Core-babylonian
sonyxBpRecompileWithoutAnnotations: oldAnnotations

	| method sourceText styler |
	method := self methodClass >> self selector.
	styler := BPStyler new
		selectedMethod: method methodReference;
		yourself.
	sourceText := styler format: method getSource.
	sourceText removeAttributesThat: [:attr |
		(attr respondsTo: #anchoredMorph) and: [attr anchoredMorph notNil] and: [attr anchoredMorph isBPAnnotationMorph] and: [
			oldAnnotations anySatisfy: [:oldAnnotation | oldAnnotation id = attr anchoredMorph annotation id]]].
	oldAnnotations do: [:annotation | annotation methodReference: nil].
	^ self methodClass compile: (styler unstyledTextFrom: sourceText)