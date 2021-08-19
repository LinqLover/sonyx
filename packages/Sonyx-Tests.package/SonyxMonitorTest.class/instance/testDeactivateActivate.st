tests
testDeactivateActivate
	 
	self assert: self isProbeInstalled.
	
	self monitor toggleActivation.
	self deny: self isProbeInstalled.
	
	self monitor toggleActivation.
	self assert: self isProbeInstalled.