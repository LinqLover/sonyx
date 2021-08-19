private
annotationSandblocksEditor
	 
	^ self annotationMorph
		findDeepSubmorphThat: [:morph | morph visibleInWorld and: [morph isKindOf: SBEditor]]
		ifAbsent: []