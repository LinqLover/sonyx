initialization
initialize
	 
	super initialize.
	
	textEditor := self newTextEditor.
	sandblocksEditor := self newSandblocksEditor.
	
	widgetsMorph := self newWidgetsMorph
		addMorph: (self newContainerMorphWith: textEditor);
		addMorph: (self newContainerMorphWith: sandblocksEditor);
		yourself.
	self editorType: self defaultEditorType.
	
	self
		addMorphBack: self newEnablementButton;
		addMorphBack: self newPrehearButton;
		addMorphBack: self newCollapseButton;
		addMorphBack: self newToggleEditorButton;
		addMorphBack: widgetsMorph;
		addMorphBack: self newRemoveButton.