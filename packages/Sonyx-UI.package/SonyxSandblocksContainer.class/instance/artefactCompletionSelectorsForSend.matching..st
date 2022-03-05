suggestions
artefactCompletionSelectorsForSend: aBlock matching: matchString

	"Overridden to provide very domain-specific suggestions here."
	^ (Array streamContents: [:stream |
		(aBlock guessClassExpensive ifNil: [true] ifNotNil: [:class | class respondsTo: #from:to:]) ifTrue: [
			stream nextPutAll: #(from:to: from:to:into:to:)].
		stream nextPutAll: (super artefactCompletionSelectorsForSend: aBlock matching: matchString)])
			"withoutDuplicates".