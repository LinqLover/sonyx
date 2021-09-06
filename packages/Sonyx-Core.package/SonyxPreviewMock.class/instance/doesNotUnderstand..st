system primitives
doesNotUnderstand: aMessage
	 
	(aMessage selector = #perform: and: [(aMessage arguments at: 1 ifAbsent: [nil]) = #class] and: [thisContext home sender selector = #updateStyler:requestor:]) ifTrue: [
		nil flag: #workaround. "See Inspector >> #updateStyler:requestor:"
		^ nil class].
	
	(thisContext findContextSuchThat: [:ctx | ctx selector = #into:to:]) ifNotNil: [:ctx |
		| rcvr max min |
		thisContext home privSender: ctx sender.
		rcvr := ctx receiver.
		min := ctx tempAt: 1.
		max := ctx tempAt: 2.
		(thisContext objectClass: rcvr) == (thisContext objectClass: self) ifFalse: [^ rcvr].
		(thisContext objectClass: min) == (thisContext objectClass: self) ifFalse: [^ min].
		(thisContext objectClass: max) == (thisContext objectClass: self) ifFalse: [^ max].
		^ self xxxCacheAt: #mock for: thisContext home sender ifAbsentPut: [(thisContext objectClass: self) new xxxRandom: ThreadSafeRandom value]].
	
	^ self