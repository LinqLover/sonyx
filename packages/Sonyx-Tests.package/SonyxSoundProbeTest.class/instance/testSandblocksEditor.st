tests
testSandblocksEditor
	 
	| editor |
	self installProbe.
	self switchProbeToTextEditor.
	editor := self switchProbeToSandblocksEditor.
	self
		shouldPlaySound: [self executeMethodWith: 1];
		shouldPlaySound: [self executeMethodWith: 2].
	
	self sandblocksWrapInConditional.
	self sandblocksAccept.
	self
		shouldntPlaySound: [self executeMethodWith: 1];
		shouldPlaySound: [self executeMethodWith: 2].
	
	self sandblocksInvertCondition.
	self sandblocksAccept.
	self
		shouldntPlaySound: [self executeMethodWith: 1];
		shouldPlaySound: [self executeMethodWith: 2].