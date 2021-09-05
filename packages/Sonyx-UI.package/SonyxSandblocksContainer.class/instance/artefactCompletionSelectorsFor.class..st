suggestions
artefactCompletionSelectorsFor: aBlock class: aClass
	 
	"Overridden to provide very domain-specific suggestions here."
	(aBlock isSymbolBlock and: [aBlock parentSandblock isMessageSend]) ifTrue: [
		| messageSend |
		messageSend := aBlock parentSandblock.
		(messageSend selector = #squeakSound:
			and: [messageSend actualReceiver guessClassExpensive includesBehavior: SonyxSound])
			ifTrue: [^ SonyxSound squeakSoundSelectors sorted]].
	
	(aClass notNil ==> [aClass includesBehavior: SmallInteger]) ifTrue: [
		^ Array streamContents: [:stream | stream
			nextPutAll: #(from:to: into:to:);
			nextPutAll: (super artefactCompletionSelectorsFor: aBlock class: aClass)]].
	
	^ super artefactCompletionSelectorsFor: aBlock class: aClass
	
	