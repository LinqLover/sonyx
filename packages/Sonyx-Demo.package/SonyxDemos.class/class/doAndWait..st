private
doAndWait: aBlock
	 
	| process semaphore wasUI |
	semaphore := Semaphore new.
	process := [aBlock value.
	semaphore signal] fork.
	wasUI := Project current spawnNewProcessIfThisIsUI: Processor activeProcess.
	[[semaphore wait] ifCurtailed: [process terminate]]
		ensure: [wasUI ifTrue: [Project uiProcess terminate]].