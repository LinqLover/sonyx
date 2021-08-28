playing
play: aSound

	aSound ifNil: [^ self].
	aSound playWith: self.