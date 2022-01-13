private
stringForProperty: aSymbol value: anObject

	aSymbol = #pinVisualizationClass ifFalse: [^ super nameForProperty: aSymbol].
	^ anObject visualizationName