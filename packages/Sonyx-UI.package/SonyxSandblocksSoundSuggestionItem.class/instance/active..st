accessing
active: aBoolean

	self active = aBoolean ifTrue: [^ self].
	
	aBoolean
		ifTrue: [self currentEvent shiftPressed ifTrue: [self playSound]]
		ifFalse: [self stopSound].
	"See #filterEvent:for:"
	self sandblockEditor ifNotNil: [:editor |
		aBoolean
			ifTrue: [editor addKeyboardCaptureFilter: self]
			ifFalse: [editor removeKeyboardCaptureFilter: self]].
	
	super active: aBoolean.