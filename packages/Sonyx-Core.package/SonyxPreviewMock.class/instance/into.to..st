special messages
into: min to: max
	 
	((thisContext objectClass: min) == (thisContext objectClass: self) or: [(thisContext objectClass: max) == (thisContext objectClass: self)])
		ifTrue: [^ self].
	
	^ (self xxxNextRandomFor: thisContext sender) from: min to: max