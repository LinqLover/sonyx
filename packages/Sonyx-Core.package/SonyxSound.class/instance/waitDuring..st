playing
waitDuring: playBlock
	 
	"Evaluate the playBlock asynchronously and wait until we are unlocked via #isPlaying:."

	[Processor yield.
	playBlock ifCurtailed: [self stopPlaying]]
		forkAt: Processor activePriority.
	
	[1 second wait.
	SonyxServer isSteady ifFalse: [
		"was interrupted"
		semaphore terminateProcess]]
			forkAt: Processor activePriority.
	
	semaphore wait.