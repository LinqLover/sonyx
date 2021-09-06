playing
play: aSound for: aProbe
	 
	| playing |
	self assureSteadySoundService.
	
	aSound ifNil: [^ self].
	
	aProbe addCurrentSound: aSound.
	aSound when: #changedPlaying evaluate: [
		aSound isPlaying ifFalse: [
			playing := false.
			aProbe removeCurrentSound: aSound]].
	
	playing := true.
	aSound playWith: self.
	
	"Detect empty sounds that never trigger #changedPlaying"
	(playing and: [aSound isPlaying not]) ifTrue: [
		playing := false.
		aProbe removeCurrentSound: aSound]