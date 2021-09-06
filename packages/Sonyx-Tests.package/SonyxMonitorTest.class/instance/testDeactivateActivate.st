tests
testDeactivateActivate
	 
	self assert: self isProbeActive.
	
	self monitor toggleActivation.
	self deny: self isProbeActive.
	
	self monitor toggleActivation.
	self assert: self isProbeActive.