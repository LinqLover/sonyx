initialization
addPrehearButtonMorph
	 
	| prehearButton |
	prehearButton := IconicButton new.
	prehearButton := prehearButton
		name: #collapseButton;
		labelGraphic: (SonyxIcons soundIcon scaledToSize: self iconSize * 0.7);
		color: Color transparent;
		borderWidth: 0;
		balloonText: 'play demo';
		extent: prehearButton extent.
	prehearButton 
		actionSelector: #prehearButtonClicked;
		target: self.
	self addMorphBack: prehearButton.