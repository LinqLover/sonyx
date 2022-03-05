suggestions
artefactCompletionSuggestionsForSymbol: aBlock matching: matchString

	(self isSqueakSoundSelectorArgument: aBlock) ifFalse:
		[^ super artefactCompletionSuggestionsForSymbol: aBlock matching: matchString].
	
	^ (self artefactCompletionSelectorsForSymbol: aBlock matching: matchString) collect: [:symbol | SonyxSandblocksSoundSuggestionItem selector: symbol]