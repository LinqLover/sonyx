playing
waitDuring: playBlock
	 
	"Use one helper semaphore and n helper processes to wait for every composed sound of the receiver."

	| semaphore helperProcesses |
	semaphore := Semaphore new.
	
	helperProcesses := sounds collect: [:sound | | process |
		process := [sound waitDuring: [].
		semaphore signal]
			forkAt: Processor activePriority.
		Processor yield.
		process].
	
	[playBlock value.
	sounds do: [:sound | semaphore wait]]
		ifCurtailed: [helperProcesses do: #terminate].