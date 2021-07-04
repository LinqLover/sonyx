initialize-release
initialize
	 
	super initialize.
	
	isPlaying := false.
	semaphore := Semaphore new.