event handling
handlesKeyboard: anEvent

	^ (anEvent satisfies: #(isKeyboard isKeyDown)) and: [anEvent key = #shift]