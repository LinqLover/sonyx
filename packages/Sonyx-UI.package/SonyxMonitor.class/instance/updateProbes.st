updating
updateProbes
	 
	probes := (self tracer probes select: #isInitialized) asArray sorted: [:someProbe :someOtherProbe | someProbe methodReference <= someOtherProbe methodReference].
	self changed: #probes