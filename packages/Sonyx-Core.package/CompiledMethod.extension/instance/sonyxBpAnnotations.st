*Sonyx-Core-babylonian
sonyxBpAnnotations
	 
	^ ([[self bpAnnotations] valueWithin: 1 second onTimeout: [self error: 'timeout']] ifError: [^ #() flag: #workaround "ohm parser fails for some tag-like comments"]) select: [:annotation | annotation isKindOf: SonyxProbeAnnotation]	