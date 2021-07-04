toolbuilder
buildWith: aBuilder
	 
	| window |
	window := self buildWindowWith: aBuilder specs: {
		(LayoutFrame new
			rightFraction: 1;
			bottomOffset: self buttonHeight;
			yourself) -> [self buildTopButton: aBuilder].
		(LayoutFrame new
			rightFraction: 1;
			topOffset: self buttonHeight;
			bottomFraction: 1 / 2;
			yourself) -> [self buildProbeList: aBuilder].
		(LayoutFrame new
			topFraction: 1 / 2;
			rightFraction: 1;
			bottomFraction: 1 / 2;
			bottomOffset: self buttonHeight;
			yourself) -> [self buildButtonBar: aBuilder].
		(LayoutFrame new
			topFraction: 1 /2;
			rightFraction: 1;
			topOffset: self buttonHeight;
			bottomFraction: 1;
			yourself) -> [self buildCodePane: aBuilder].
	}.
	^ aBuilder build: window