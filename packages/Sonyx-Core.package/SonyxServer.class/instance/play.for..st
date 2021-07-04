playing
play: aSound for: aProbe
	 
	aSound ifNil: [^ self].
	
	aProbe addCurrentSound: aSound.
	aSound when: #changedPlaying evaluate: [
		aSound isPlaying ifFalse: [
			aProbe removeCurrentSound: aSound]].
	
	aSound playWith: self.