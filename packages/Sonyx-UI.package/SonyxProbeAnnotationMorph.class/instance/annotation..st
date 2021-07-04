accessing
annotation: anAnnotation
	
	| expressionSource |
	super annotation: anAnnotation.
	expressionSource := (self annotation expression ifNil: ['[:result | result]']) asString.
	expressionSource := expressionSource copyFrom: 2 to: (expressionSource size - 1 max: 1). "Removes the square brackets"
	expressionFieldMorph setText: expressionSource.