read-only objects
simulatedObject: anObject instVarAt: index put: value
	 
	self noteInstVarAccessTo: anObject at: index put: value.
	^ super simulatedObject: anObject instVarAt: index put: value