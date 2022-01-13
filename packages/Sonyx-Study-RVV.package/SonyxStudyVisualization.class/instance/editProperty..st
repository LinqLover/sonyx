menu
editProperty: aSymbol

	| answer |
	answer := Project uiManager
		request: ('Enter new value for {1}' format: {aSymbol})
		initialAnswer: (self perform: aSymbol) asString.
	answer ifNil: [^ self].
	self perform: aSymbol asSimpleSetter with: answer asNumber