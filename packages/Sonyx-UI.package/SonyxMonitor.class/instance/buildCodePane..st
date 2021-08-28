toolbuilder
buildCodePane: aBuilder
	 
	^ aBuilder pluggableCodePaneSpec new
		model: self;
		getText: #contents;
		setText: #contents:notifying:;
		yourself