tests
testEdit
	 
	self monitor selectedProbeIndex: 1.
	self shouldPlaySound: [self executeMethod].
	
	self acceptProbeText: self nilProbeText.
	self assert: self nilProbeText equals: self monitor contents.
	self shouldntPlaySound: [self executeMethod].
	
	self acceptProbeText: self probeText.
	self assert: self probeText equals: self monitor contents.
	self shouldPlaySound: [self executeMethod].