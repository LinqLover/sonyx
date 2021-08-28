*Sonyx-Core-annotations
removeSonyxAnnotationFromSelection
	 
	self removeSelectedAnnotationsSatisfying: [:a | a isKindOf: SonyxProbeAnnotation]