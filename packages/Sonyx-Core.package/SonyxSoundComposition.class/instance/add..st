accessing
add: aSound
	 
	sounds add: aSound.
	
	aSound when: #changedPlaying evaluate: [
		self triggerEvent: #changedPlaying].