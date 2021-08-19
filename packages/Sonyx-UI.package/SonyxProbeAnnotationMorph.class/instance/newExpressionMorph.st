initialization
newExpressionMorph
	 
	| container |
	container := self newLabelContainerMorph.
	
	expressionFieldMorph := (self 
		editFieldInitialContent: self defaultExpression
		onChange: [:str |
			self annotation expression: str.
			self codeContentChanged]
		onAccept: [:str | 
			self containingBrowser codeTextMorph accept]).
	expressionFieldMorph balloonText: 'Write sonification code here.
The probed value is available via the variable `result`.'.
	expressionFieldMorph hResizing: #spaceFill.
	expressionFieldMorph useDefaultStyler.
		
	container addMorph: expressionFieldMorph.
	
	^ container