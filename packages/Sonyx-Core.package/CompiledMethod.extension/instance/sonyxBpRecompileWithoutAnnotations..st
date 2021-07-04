*Sonyx-Core
sonyxBpRecompileWithoutAnnotations: oldAnnotations
	 
	| method sourceText styler |
	method := self methodClass >> self selector.
	styler := BPStyler new
		selectedMethod: method;
		yourself.
	sourceText := styler format: method getSource.
	sourceText removeAttributesThat: [:attr |
		(attr respondsTo: #anchoredMorph) and: [attr anchoredMorph isBPAnnotationMorph] and: [
			oldAnnotations anySatisfy: [:oldAnnotation | oldAnnotation id = attr anchoredMorph annotation id]]].
	^ self methodClass compile: (styler unstyledTextFrom: sourceText)