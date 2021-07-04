testing
isPlaying
	 
	^ self sounds anySatisfy: [:sound | sound isPlaying or: [sound isWaiting]]