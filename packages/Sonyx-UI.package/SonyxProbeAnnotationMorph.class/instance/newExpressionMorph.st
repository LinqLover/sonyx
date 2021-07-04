initialization
newExpressionMorph
	
	| container expressionSource |
	container := self newLabelContainerMorph.
	
	expressionFieldMorph := (self 
		editFieldInitialContent: ''
		onChange: [:str | 
			self annotation expression: ('[{1}]' format: {str}).
			self codeContentChanged]
		onAccept: [:str | 
			self containingBrowser codeTextMorph accept]).
	expressionFieldMorph balloonText: 'Write sonification code here.
The probed value is available via the variable `result`.'.
	expressionFieldMorph hResizing: #spaceFill.
	expressionFieldMorph useDefaultStyler.
		
	container addMorph: expressionFieldMorph.
	
	^ container