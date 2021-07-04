serialization
instrumentationCallFor: enclosedSource
	 
	^ '(self sonyxBpTrace: [{1}] through: {2} forProbe: {3} inContext: thisContext)' 
		format: {enclosedSource. self expression. self id}