mirror primitives
object: anObject instVarAt: index put: value
	 
	self noteInstVarAccessTo: anObject at: index put: value.
	^ super object: anObject instVarAt: index put: value