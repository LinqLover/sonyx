accessing
usableVisualizations

	^ self dataValue size = 0
		ifTrue: [self allVisualizations]
		ifFalse: [self allVisualizations select: [:class | class canHandle: self dataValue first]]