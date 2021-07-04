testing
isOutdated
	 
	self isInitialized ifFalse: [^ false].
	^ self bpAnnotations isEmpty