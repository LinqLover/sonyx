actions
acceptExpression: aStringOrText
	 
	| codeTextMorph previousExpression |
	previousExpression := self annotation expression.
	codeTextMorph := self containingBrowser codeTextMorph.
	
	[self annotation expression: aStringOrText.
	self codeContentChanged.
	codeTextMorph accept]
		ensure: [codeTextMorph hasUnacceptedEdits
			ifTrue: [self annotation expression: previousExpression]].
	
	^ codeTextMorph hasUnacceptedEdits not