accessing
usableVisualizations

	^ (self data notEmpty and: [self dataValue notEmpty])
		ifFalse: [self allVisualizations]
		ifTrue: [self allVisualizations select: [:class | class canHandle: self dataValue first]]