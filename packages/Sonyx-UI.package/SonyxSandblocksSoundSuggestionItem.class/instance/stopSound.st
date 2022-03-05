playing
stopSound

	 self squeakSound isPlaying ifTrue: [
		self squeakSound stopAfterMSecs: 0.
		self changed]