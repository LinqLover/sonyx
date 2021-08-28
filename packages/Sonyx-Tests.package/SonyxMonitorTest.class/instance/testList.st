tests
testList
	 
	self assert: 1 equals: self monitor probes size.
	self
		assert: (self monitor probeStrings first asString includesSubstring: self methodClass name);
		assert: (self monitor probeStrings first asString includesSubstring: self methodSelector).
	
	self monitor selectedProbeIndex: 1.
	self assert: self probeText equals: self monitor contents.
	
	self monitor selectedProbeIndex: 0.
	self assert: self monitor contents isEmptyOrNil.