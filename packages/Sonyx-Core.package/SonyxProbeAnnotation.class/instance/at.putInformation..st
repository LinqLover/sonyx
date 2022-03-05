accessing
at: aKey putInformation: anObject

	aKey = #expression ifFalse: [
		^ super at: aKey putInformation: anObject].
	
	"Sanitize"
	(anObject isString 
		and: [anObject size >= 2]
		and: [(anObject copyFrom: 2 to: anObject size - 1) withBlanksTrimmed notEmpty]) 
			ifFalse: [self expression: nil].
	self
		assert: anObject first = $[;
		assert: anObject last = $].
	
	self expression: anObject allButFirst allButLast.