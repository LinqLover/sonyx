*Sonyx-Core-babylonian
sonyxBpTrace: anObject through: aBlock forProbe: probeId inContext: aContext
	 
	<bpRelevantMethod>
	^ SonyxCompiler bpInstrumentedLayerName withoutLayerDo: [
		SonyxTracer
			trace: anObject 
			through: aBlock
			forProbe: probeId 
			inContext: aContext]