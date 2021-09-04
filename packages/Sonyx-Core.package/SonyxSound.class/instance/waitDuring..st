playing
waitDuring: aBlock
	 
	[Processor yield.
	aBlock ifCurtailed: [self stopPlaying]] forkAt: Processor activePriority.
	
	[1 second wait.
	SonyxServer isSteady ifFalse: [
		"was interrupted"
		semaphore terminateProcess]] forkAt: Processor activePriority.
	
	semaphore wait.