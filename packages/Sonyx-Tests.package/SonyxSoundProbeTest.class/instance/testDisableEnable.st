tests
testDisableEnable
	 
	self installProbe.
	self shouldPlaySound: [self executeMethod].
	
	self disableProbe.
	self shouldntPlaySound: [self executeMethod].
	
	self enableProbe.
	self shouldPlaySound: [self executeMethod].