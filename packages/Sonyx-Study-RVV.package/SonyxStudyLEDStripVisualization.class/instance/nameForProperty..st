private
nameForProperty: aSymbol

	aSymbol = #pinVisualizationClass ifFalse: [^ super nameForProperty: aSymbol].
	^ 'Pin visualization'