instance creation
selector: aSymbol

	| sound |
	sound := aSymbol asSound copy.
	^ (self
		selector: aSymbol
		label: ((sound respondsTo: #pitch) ifTrue: ['earcon'] ifFalse: ['audicon']))
			squeakSound: sound;
			yourself