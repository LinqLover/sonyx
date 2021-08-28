support - sandblocks
sandblocksInvertCondition
	 
	| editor evenBlock |
	editor := self methodAnnotationSandblocksEditor.
	
	evenBlock := editor artefacts first
		findDeepSubmorphThat: [:morph | morph userString = 'even']
		ifAbsent: [].
	evenBlock contents: 'odd'.