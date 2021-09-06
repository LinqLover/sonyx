accessing
valueOf: aSymbol for: aFraction
	"Retrieve the current value of the property, addressed by aSymbol, for the current playing progress, specified by aFraction in [0, 1]."
	 
	| valueLike |
	valueLike := aSymbol cull: self.
	valueLike isBlock ifTrue: [
		valueLike := valueLike value: aFraction].
	^ valueLike