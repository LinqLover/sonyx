*Sonyx-Core-babylonian
sonyxBpTrace: anObject through: aBlock forProbe: probeId inContext: aContext
	
	<bpRelevantMethod>
	self flag: #todo. "Use own tracer?"
	
	^ SonyxBPCompiler bpInstrumentedLayerName withoutLayerDo: [
		SonyxTracer
			trace: anObject 
			through: aBlock
			forProbe: probeId 
			inContext: aContext]