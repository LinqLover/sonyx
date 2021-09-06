updating
updateProbes
	 
	probes := (self tracer probes select: #isInitialized) sorted: [:someProbe :someOtherProbe |
		someProbe methodReference <= someOtherProbe methodReference].
	
	self changed: #probes