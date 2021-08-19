*Sonyx-UI-*Babylonian-UI-icons-override
bpExampleIcon
	 
	self containsSonyxSounds ifTrue: [^ SonyxIcons soundIcon].
	
	self containsExamples ifTrue: [^ BPIcons boxIcon].
	
	^ ToolIcons blank