tests
testTextEditor
	 
	| originalText |
	self installProbe.
	originalText := self switchProbeToTextEditor text.
	self
		shouldPlaySound: [self executeMethodWith: 1];
		shouldPlaySound: [self executeMethodWith: 2].
	
	self acceptProbeText: ('arg even ifTrue: [{1}]' format: {originalText}).
	self
		shouldntPlaySound: [self executeMethodWith: 1];
		shouldPlaySound: [self executeMethodWith: 2].
	
	self acceptProbeText: ('arg odd ifTrue: [{1}]' format: {originalText}).
	self
		shouldPlaySound: [self executeMethodWith: 1];
		shouldntPlaySound: [self executeMethodWith: 2].