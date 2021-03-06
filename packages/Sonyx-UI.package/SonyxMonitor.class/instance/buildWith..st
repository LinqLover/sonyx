toolbuilder
buildWith: aBuilder
	 
	| window |
	window := self buildWindowWith: aBuilder specs: {
		(LayoutFrame new
			rightFraction: 1;
			bottomOffset: aBuilder buttonRowHeight;
			yourself) -> [self buildTopButton: aBuilder].
		(LayoutFrame new
			rightFraction: 1;
			topOffset: aBuilder buttonRowHeight;
			bottomFraction: 1 / 2;
			yourself) -> [self buildProbeList: aBuilder].
		(LayoutFrame new
			topFraction: 1 / 2;
			rightFraction: 1;
			bottomFraction: 1 / 2;
			bottomOffset: aBuilder buttonRowHeight;
			yourself) -> [self buildButtonBar: aBuilder].
		(LayoutFrame new
			topFraction: 1 / 2;
			rightFraction: 1;
			topOffset: aBuilder buttonRowHeight;
			bottomFraction: 1;
			yourself) -> [self buildCodePane: aBuilder].
	}.
	^ aBuilder build: window