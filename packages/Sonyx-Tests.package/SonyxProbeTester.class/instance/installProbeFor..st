support
installProbeFor: substring
	 
	| browser |
	browser := BPBrowser new
		setClass: self methodClass selector: self methodSelector;
		yourself.
	self wrapTester: [:block | | window |
		window := browser buildWith: ToolBuilder default. "store in receiver to protect #codeTextMorph against GC"
		block value].
	
	[browser codeTextMorph find]
		valueSupplyingAnswer: {'Find what to select?'. substring}.
	browser addSonyxAnnotationToSelection.
	
	browser codeTextMorph selectAll.
	annotationMorphs := browser annotationMorphsInSelection select: [:morph | morph isKindOf: SonyxProbeAnnotationMorph].
	self refreshAnnotationMorphs.