initialization
newTextEditor

	^ (self 
		editFieldInitialContent: self defaultExpression
		onChange: [:str |
			self annotation expression: str.
			self codeContentChanged]
		onAccept: [:str | 
			(self containingBrowser codeTextMorph
				accept;
				hasUnacceptedEdits) not])
		
		balloonText: 'Write sonification code here.
The probed value is available via the variable `result`.';
		useDefaultStyler;
		
		hResizing: #spaceFill;
		
		yourself