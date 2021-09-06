accessing
newExpression: aString
	 
	"Exchange the expression of the receiver and update the referencing method. The instance variable expression will be set when the tracer calls back to the receiver via #updateFrom:."

	^ (self methodReference compiledMethod sonyxBpRecompileAfterUpdatingAnnotations: [
		self bpAnnotations
			do: [:annotation | annotation expression: aString];
			yourself]) notNil