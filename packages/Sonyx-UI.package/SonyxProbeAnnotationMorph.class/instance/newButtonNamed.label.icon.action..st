initialization - buttons
newButtonNamed: aSymbol label: aStringOrText icon: aForm action: actionSelector
	 
	^ IconicButton new
		color: Color transparent;
		borderWidth: 0;
		
		name: aSymbol;
		balloonText: aStringOrText;
		labelGraphic: (aForm scaledToSize: self iconSize * 0.7);
		
		target: self;
		actionSelector: actionSelector;
		
		yourself