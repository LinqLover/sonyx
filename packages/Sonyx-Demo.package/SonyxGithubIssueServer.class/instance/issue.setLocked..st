requests
issue: number setLocked: aBoolean
	 
	 aBoolean
		ifTrue: [self lockIssue: number]
		ifFalse: [self unlockIssue: number].
	^ self issues detect: [:issue | issue number = number]