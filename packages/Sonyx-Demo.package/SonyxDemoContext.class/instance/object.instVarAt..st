mirror primitives
object: anObject instVarAt: index
	 
	self noteInstVarAccessTo: anObject at: index.
	^ super object: anObject instVarAt:     index 