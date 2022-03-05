*Sonyx-UI-Sandblocks-suggestions
sandblocksSuggestionsFor: aSandblock
	 
	^ Array streamContents: [:stream | | class |
		class := self.
		[class includesBehavior: AbstractSonyxSound] whileTrue: [
			stream nextPutAll: ((class methodsInCategory: #'accessing')
				select: [:sel | sel numArgs = 1]).
			class := class superclass]]