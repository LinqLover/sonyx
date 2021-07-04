playing
waitDuring: aBlock
	 
	| semaphore helperProcesses |
	semaphore := Semaphore new.
	
	helperProcesses := sounds collect: [:sound | | process |
		process := [sound waitDuring: [].
		semaphore signal]
			forkAt: Processor activePriority.
		Processor yield.
		process].
	
	[aBlock value.
	sounds do: [:sound | semaphore wait]]
		ifCurtailed: [helperProcesses do: #terminate].