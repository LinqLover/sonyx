initialization
newContainerMorphWith: aMorph
	 
	^ self newContainerMorph
		changeTableLayout;
		hResizing: #spaceFill;
		cellPositioning: #topLeft;
		layoutInset: 1;
		addMorph: aMorph;
		yourself.