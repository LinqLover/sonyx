accessing
soundTester
	 
	^ soundTester ifNil: [
		soundTester := (SonyxSoundTester for: self).
		self wrapTest: [:block |
			[soundTester setUpDuring: block]
				ensure: [soundTester := nil]].
		soundTester]