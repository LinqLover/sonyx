as yet unclassified
collapseButtonClicked 
	widgetsMorph visible
		ifTrue: [widgetsMorph hide; disableLayout: true]
		ifFalse: [widgetsMorph show; disableLayout: false]