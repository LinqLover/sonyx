support
createButton

	"
	self createButton
	"

	| button setButtonLabel bar spacer |
	button := nil.
	setButtonLabel := [button label:
		('Sonyx Study [{1}]' format: {self current ifNil: ['off'] ifNotNil: #type})].
	button := SimpleButtonMorph new
		target: [
			self switchSonyxStudy.
			setButtonLabel value];
		actionSelector: #value;
		yourself.
	setButtonLabel value.
	
	bar := Project current world dockingBars first.
	spacer := bar findA: AlignmentMorph.
	spacer submorphAfter "change set" delete.
	bar addMorph: button after: spacer.
	^ button