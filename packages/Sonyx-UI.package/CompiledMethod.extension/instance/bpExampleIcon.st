*Sonyx-UI-*Babylonian-UI-icons-override
bpExampleIcon

	self sonyxBpAnnotations ifNotEmpty: [^ SonyxIcons soundIcon].
	
	self bpExamples ifNotEmpty: [^ BPIcons boxIcon].
	
	^ nil