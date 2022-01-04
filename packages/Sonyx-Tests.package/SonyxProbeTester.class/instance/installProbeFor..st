support
installProbeFor: substring

	| browser |
	browser := BPBrowser new
		setClass: self methodClass selector: self methodSelector;
		yourself.
	self wrapTester: [:block | | window |
		window := browser buildWith: ToolBuilder default. "store into context to protect #codeTextMorph against GC"
		block value].
	browserTextMorph := browser codeTextMorph.
	
	[browserTextMorph find]
		valueSupplyingAnswer: {'Find what to select?'. substring}.
	browser addSonyxAnnotationToSelection.
	
	browserTextMorph selectAll.
	self updateAnnotationMorphs.