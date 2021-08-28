tests
testRemove
	 
	self monitor
		selectedProbeIndex: 1;
		removeSelection;
		step.
	
	self
		assert: self monitor probes isEmpty;
		assert: self monitor contents isEmptyOrNil;
		deny: self isProbeInstalled.