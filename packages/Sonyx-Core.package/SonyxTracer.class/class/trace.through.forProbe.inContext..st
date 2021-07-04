tracing
trace: aBlock through: expressionProbe forProbe: probeId inContext: aContext
	
	| tracer |
	LastError ifNotNil: [^ aBlock value].
	tracer := self current ifNil: [^ aBlock value].
	
	^  [| result |
	result := tracer trace: aBlock through: expressionProbe forProbe: probeId inContext: aContext.
	LastError := nil.
	result]
		on: Error, Warning, Halt
		do: [:ex |
			LastError := ex.
			ex pass]