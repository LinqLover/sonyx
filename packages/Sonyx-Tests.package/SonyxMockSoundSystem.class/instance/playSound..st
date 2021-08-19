playing
playSound: aSound
	 
	(aSound isKindOf: RepeatingSound) ifTrue: [
		"don't fall over sounds repeating #forever"
		aSound sound playSilently.
		^ self].
	
	lastPlayedSound := aSound.
	aSound playSilently.
	
	self isListening ifTrue: [
		self realSoundSystem playSound: aSound.
		SoundPlayer waitUntilDonePlaying: aSound].