menu
editProperty: aSymbol

	| answer |
	answer := Project uiManager
		request: ('Enter new value for {1}' format: {aSymbol})
		initialAnswer: (self perform: aSymbol) asString.
	answer isEmptyOrNil ifTrue: [^ self].
	self perform: aSymbol asSimpleSetter with: answer asNumber