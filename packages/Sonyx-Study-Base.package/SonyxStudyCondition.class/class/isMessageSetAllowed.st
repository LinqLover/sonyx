testing
isMessageSetAllowed

	^ self current
		ifNil: [true]
		ifNotNil: #isMessageSetAllowed