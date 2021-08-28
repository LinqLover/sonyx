testing
isOutdated
	 
	self isInitialized ifFalse: [^ false].
	self methodReference isValid ifFalse: [^ true].
	^ self bpAnnotations isEmpty