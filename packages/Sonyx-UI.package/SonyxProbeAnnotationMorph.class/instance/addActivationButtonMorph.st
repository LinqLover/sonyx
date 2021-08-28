initialization
addActivationButtonMorph
	 
	| checkbox |
	checkbox := UpdatingThreePhaseButtonMorph checkBox.
	self addMorphBack: (checkbox 
		target: self;
		getSelector: #enabled;
		actionSelector: #toggleEnablement;
		balloonText: 'enable?';
		yourself).