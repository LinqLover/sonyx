tracing
trace: aBlock through: expressionProbe forProbe: probeId inContext: aContext

	| result probe |
	result := self traceBlock: aBlock forProbe: probeId.
	
	self isActive ifFalse: [^ result].
	
	probe := self probeForId: probeId.
	probe enabled ifFalse: [^ result].
	expressionProbe ifNotNil: [
		[self server play: (expressionProbe cull: result) for: probe]
			on: Error, Warning, Halt do: [:ex |
				probe enabled: false.
				ex tag: probe.
				ex pass]].
	
	^ result