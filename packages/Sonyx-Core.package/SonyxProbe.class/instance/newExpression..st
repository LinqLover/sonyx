accessing
newExpression: aString
	 

	^ (self methodReference compiledMethod sonyxBpRecompileAfterUpdatingAnnotations: [
		self bpAnnotations
			do: [:annotation | annotation expression: aString];
			yourself]) notNil