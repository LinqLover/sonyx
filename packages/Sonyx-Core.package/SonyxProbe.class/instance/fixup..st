fixup
fixup: aggressive
	 
	currentSounds removeAllSuchThat: [:sound |
		aggressive ifTrue: [sound stopPlaying].
		sound isPlaying not].