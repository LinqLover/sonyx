event handling
filterEvent: aKeyboardEvent for: aMorph
	"We need to handle keyboard events via filters because the suggestions menu and its items do nto hold the keyboard focus themselves."

	(aMorph == self sandblockEditor and: [self handlesKeyboard: aKeyboardEvent]) ifTrue: [
		self keyDown: aKeyboardEvent.
		^ aKeyboardEvent ignore].
	
	^ aKeyboardEvent