testing
isOutdated
	 
	self isInitialized ifFalse: [^ false].
	self methodReference isValid ifFalse: [^ true].
	(self methodReference actualClass compiledMethodAt: self methodReference selector) == self methodReference compiledMethod ifFalse: [^ true].
	^ self bpAnnotations isEmpty