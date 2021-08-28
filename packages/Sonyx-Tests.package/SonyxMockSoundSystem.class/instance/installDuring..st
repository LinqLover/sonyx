mock
installDuring: aBlock

	^ SoundService default: self during: [:previous |
		self realSoundSystem: previous.
		aBlock value]