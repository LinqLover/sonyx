private
annotationTextMorph
	 
	^ self annotationMorph
		findDeepSubmorphThat: [:morph | morph visibleInWorld and: [morph isKindOf: PluggableTextMorph]]
		ifAbsent: []