suggestions
artefactCompletionSelectorsForSymbol: aBlock matching: matchString

	"Overridden to provide very domain-specific suggestions here."
	(self isSqueakSoundSelectorArgument: aBlock)
		ifFalse: [^ super artefactCompletionSelectorsForSymbol: aBlock matching: matchString].
	
	^ self completionSelectorsFrom: SonyxSound squeakSoundSelectors sorted matching: matchString