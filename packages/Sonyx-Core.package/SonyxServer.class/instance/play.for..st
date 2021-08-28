playing
play: aSound for: aProbe
	 
	self assureSteadySoundService.
	
	aSound ifNil: [^ self].
	
	aProbe addCurrentSound: aSound.
	aSound when: #changedPlaying evaluate: [
		aSound isPlaying ifFalse: [
			aProbe removeCurrentSound: aSound]].
	
	aSound playWith: self.