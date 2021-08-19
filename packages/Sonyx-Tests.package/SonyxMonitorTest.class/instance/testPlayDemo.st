tests
testPlayDemo
	 
	self monitor selectedProbeIndex: 1.
	self shouldPlaySound: [self monitor playDemo]