ast helpers
binding: aString for: block class: aClass ifPresent: aBlock
	 
	(super binding: aString for: block class: aClass ifPresent: aBlock) ifNotNil: [:binding | ^ binding].
	
	^ self pseudoMethodBlock ifNotNil: [:methodBlock | methodBlock binding: aString for: block class: aClass ifPresent: aBlock]