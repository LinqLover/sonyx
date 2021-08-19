initialization
initialize
	 
	| removeButton editorMorph expressionMorph |
	super initialize.
	
	removeButton := self newRemoveButton
		balloonText: 'remove sound';
		yourself.
	"This morph holds the traces and the expression morph"
	widgetsMorph := self newWidgetsMorph.
	expressionMorph := self newExpressionMorph.
	editorMorph := self newEditorMorph.
	(self useSandblocks ifTrue: [expressionFieldMorph owner] ifFalse: [expressionEditorMorph owner])
		hide; disableLayout: true.
	widgetsMorph addAllMorphs: {expressionMorph. editorMorph}.
	
	self addActivationButtonMorph.
	self addPrehearButtonMorph.
	self addCollapseButtonMorph.
	self addToggleEditorButtonMorph.
	self addMorphBack: widgetsMorph.
	self addMorphBack: removeButton.
	
	self startStepping