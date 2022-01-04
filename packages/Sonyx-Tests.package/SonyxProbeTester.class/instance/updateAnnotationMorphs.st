support
updateAnnotationMorphs

	| browser |
	browser := self browserTextMorph model.
	annotationMorphs := browser annotationMorphsInSelection select: [:morph | morph isKindOf: SonyxProbeAnnotationMorph].
	self refreshAnnotationMorphs.