tests
testDisableEnable
	 
	self monitor selectedProbeIndex: 1.
	self shouldPlaySound: [self executeMethod].
	
	self monitor toggleSelectionDisablement.
	self shouldntPlaySound: [self executeMethod].
	
	self monitor toggleSelectionDisablement.
	self shouldPlaySound: [self executeMethod].