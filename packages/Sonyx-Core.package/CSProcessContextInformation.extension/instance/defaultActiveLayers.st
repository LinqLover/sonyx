*Sonyx-Core-accessing
defaultActiveLayers
	 
	^ SonyxTracer isActive
		ifTrue: [{SonyxCompiler bpInstrumentedLayerName}]
		ifFalse: [#()]