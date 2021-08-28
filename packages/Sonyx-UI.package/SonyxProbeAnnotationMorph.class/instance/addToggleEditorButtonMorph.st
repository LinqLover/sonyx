initialization
addToggleEditorButtonMorph
	 
	| toggleButton |
	toggleButton := IconicButton new.
	toggleButton := toggleButton
		name: #toggleEditorButton;
		labelGraphic: (BPIcons supportIcon scaledToSize: self iconSize * 0.7);
		color: Color transparent;
		borderWidth: 0;
		balloonText: 'toggle editor';
		extent: toggleButton extent * 0.7.
	toggleButton 
		actionSelector: #toggleEditorButtonClicked;
		target: self.
	self addMorphBack: toggleButton.