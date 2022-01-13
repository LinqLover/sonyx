menu
editPinVisualizationClass

	| answer |
	answer := Project uiManager chooseFromLabeledValues: (self usableVisualizations
		collect: [:class | class name -> class]
		as: Dictionary).
	answer ifNil: [^ self].
	self visualizationClass: answer