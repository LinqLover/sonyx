event handling
keyDown: anEvent

	anEvent key = #shift ifFalse: [^ self].
	self playSound.