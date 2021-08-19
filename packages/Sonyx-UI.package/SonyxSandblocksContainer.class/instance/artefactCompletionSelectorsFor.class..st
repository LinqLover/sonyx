suggestions
artefactCompletionSelectorsFor: aBlock class: aClass
	 
	(aBlock isSymbolBlock and: [aBlock parentSandblock isMessageSend]) ifTrue: [
		| messageSend |
		messageSend := aBlock parentSandblock.
		(messageSend selector = #squeakSound: and: [messageSend actualReceiver guessClassExpensive includesBehavior: SonyxSound]) ifTrue: [
		^ SonyxSound squeakSoundSelectors sorted]].
	
	(aClass notNil ==> [aClass includesBehavior: SmallInteger]) ifTrue: [
		^ Array streamContents: [:stream |
			stream nextPutAll: #(from:to: into:to:).
			stream nextPutAll: (super artefactCompletionSelectorsFor: aBlock class: aClass)]].
	
	^ super artefactCompletionSelectorsFor: aBlock class: aClass
	
	