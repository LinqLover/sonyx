playing
stopWaitingIf: booleanBlock
	
	self isWaiting ifFalse: [^ self].
	booleanBlock value ifTrue: [
		semaphore signal].