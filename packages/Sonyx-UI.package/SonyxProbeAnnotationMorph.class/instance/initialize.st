initialization
initialize
	 
	| removeButton |
	super initialize.
	
	removeButton := self newRemoveButton
		balloonText: 'remove sound';
		yourself.
	"This morph holds the traces and the expression morph"
	widgetsMorph := self newWidgetsMorph.
	widgetsMorph addMorph: self newExpressionMorph.
	
	self addActivationButtonMorph.
	self addPrehearButtonMorph.
	self addCollapseButtonMorph.
	self addMorphBack: widgetsMorph.
	self addMorphBack: removeButton.
	
	self startStepping