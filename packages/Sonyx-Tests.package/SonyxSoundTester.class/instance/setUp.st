running
setUp

	super setUp.
	
	soundSystem := SonyxMockSoundSystem new.
	self wrapTester: [:block | soundSystem installDuring: block].