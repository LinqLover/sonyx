testing
isBreakPointAllowed

	^ self current
		ifNil: [true]
		ifNotNil: #isBreakPointAllowed