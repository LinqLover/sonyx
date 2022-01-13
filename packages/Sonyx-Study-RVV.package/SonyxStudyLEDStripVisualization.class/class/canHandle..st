testing
canHandle: anObject

	^ anObject isCollection and: [anObject isSequenceable]