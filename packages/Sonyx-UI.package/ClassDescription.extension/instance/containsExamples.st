*Sonyx-UI-*Babylonian-Core-override
containsExamples
	
	self methodsDo: [:m |
		m bpExamples ifNotEmpty: [^ true]].
	^ self containsSonyxSounds