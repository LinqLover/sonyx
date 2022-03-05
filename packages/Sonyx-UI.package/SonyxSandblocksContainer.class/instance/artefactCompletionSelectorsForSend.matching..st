suggestions
artefactCompletionSelectorsForSend: aBlock matching: matchString

	"Overridden to provide very domain-specific suggestions here."
	^ Array streamContents: [:stream |
		"If applicable, always promote our range utility-selector protocol."
		(aBlock guessClassExpensive ifNil: [true] ifNotNil: [:class | class respondsTo: #from:to:]) ifTrue: [
			stream nextPutAll: #(from:to: from:to:into:to:)].
		
		"The rest follows as usual."
		stream nextPutAll: (super artefactCompletionSelectorsForSend: aBlock matching: matchString)].