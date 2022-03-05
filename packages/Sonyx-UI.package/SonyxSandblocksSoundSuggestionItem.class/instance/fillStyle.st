drawing
fillStyle

	^ (self active and: [self squeakSound isPlaying])
		ifTrue: [Color green muchDarker]
		ifFalse: [super fillStyle]