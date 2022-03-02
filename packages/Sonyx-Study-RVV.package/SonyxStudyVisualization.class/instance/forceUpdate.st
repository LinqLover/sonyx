accessing
forceUpdate

	^ (self owner ifNil: [^ false]) = self watch