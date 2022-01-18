accessing
annotation: anAnnotation

	| expressionSource |
	super annotation: anAnnotation.
	
	expressionSource := self annotation expression asString.
	textEditor setText: expressionSource.
	[sandblocksEditor artefacts first
		methodReference: self methodReference;
		setFromSource: expressionSource]
			on: UndeclaredVariableWarning
			do: [:ex | ex resume].