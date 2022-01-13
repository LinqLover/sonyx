menu
editProperty: aSymbol

	aSymbol = #pinVisualizationClass ifFalse: [^ super editProperty: aSymbol].
	^ self editPinVisualizationClass