initialization
newWidgetsMorph
	 
	^ Morph new
		beTransparent;
		changeTableLayout;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		cellPositioning: #topLeft;
		layoutInset: 1;
		yourself