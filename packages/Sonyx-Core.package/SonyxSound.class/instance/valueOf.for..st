accessing
valueOf: aSymbol for: aFraction
	
	| valueLike |
	valueLike := aSymbol cull: self.
	valueLike isBlock ifTrue: [
		valueLike := valueLike value: aFraction].
	^ valueLike