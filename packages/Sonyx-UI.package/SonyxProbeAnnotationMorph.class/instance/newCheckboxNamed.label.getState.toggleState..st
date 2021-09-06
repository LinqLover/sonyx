initialization - buttons
newCheckboxNamed: aSymbol label: aStringOrText getState: getSelector toggleState: toggleSelector

	^ UpdatingThreePhaseButtonMorph checkBox
		name: aSymbol;
		balloonText: aStringOrText;
		
		target: self;
		getSelector: getSelector;
		actionSelector: toggleSelector;
		
		yourself