*Sonyx-Tests-accessing
annotationMorphsInSelection
	 
	| annotationMorphs interval|
	annotationMorphs := OrderedCollection new.
	interval := self codeTextMorph selectionInterval. 
	(interval start to: interval stop + 1) do: [:index |
		self codeTextMorph text attributesAt: index do: [:attr |
			((attr isKindOf: TextAnchor) and: [attr anchoredMorph isBPAnnotationMorph])
				ifTrue: [annotationMorphs add: attr anchoredMorph]]].
	^ annotationMorphs