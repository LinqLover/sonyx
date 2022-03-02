menu
editPinVisualizationClass

	| answer |
	answer := Project uiManager chooseFromLabeledValues: (self usableVisualizations
		collect: [:class | class visualizationName -> class]
		as: Dictionary).
	answer ifNil: [^ self].
	self pinVisualizationClass: answer