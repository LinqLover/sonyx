playing
waitDuring: aBlock
	 
	[Processor yield.
	aBlock value] forkAt: Processor activePriority.
	semaphore wait.