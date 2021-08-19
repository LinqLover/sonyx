sound generation
stopPlaying
	 
	self
		pause;
		stopAfterMSecs: 0.
	
	sonyxSound isPlaying: false.