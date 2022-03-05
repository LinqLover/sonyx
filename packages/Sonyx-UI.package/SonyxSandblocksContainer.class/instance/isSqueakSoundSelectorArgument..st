private
isSqueakSoundSelectorArgument: aBlock

	| messageSend |
	(aBlock isSymbolBlock and: [aBlock parentSandblock isMessageSend]) ifFalse: [^ false].
	
	messageSend := aBlock parentSandblock.
	^ messageSend selector = #squeakSound:
		and: [messageSend actualReceiver guessClassExpensive
			ifNil: [false]
			ifNotNil: [:class | class includesBehavior: SonyxSound]]