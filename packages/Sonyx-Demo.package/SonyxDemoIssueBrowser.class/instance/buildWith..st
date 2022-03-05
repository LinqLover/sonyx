toolbuilder
buildWith: aBuilder
	 
	| window |
	window := self buildWindowWith: aBuilder specs: {
		(LayoutFrame new
			rightFraction: 1;
			bottomOffset: aBuilder buttonRowHeight;
			yourself) -> [self buildButtonBar: aBuilder].
		(LayoutFrame new
			rightFraction: 1;
			topOffset: aBuilder buttonRowHeight;
			bottomFraction: 1 / 2;
			yourself) -> [self buildIssueList: aBuilder].
		(LayoutFrame new
			topFraction: 1 / 2;
			rightFraction: 1;
			bottomFraction: 1;
			yourself) -> [self buildTextPane: aBuilder].
	}.
	^ aBuilder build: window