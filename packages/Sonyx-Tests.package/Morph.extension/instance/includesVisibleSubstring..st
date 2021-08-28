*Sonyx-Tests-testing
includesVisibleSubstring: aString
	 
	^ (self
		findDeepSubmorphThat: [:morph | morph visibleInWorld and: [(morph userString ifNil: ['']) includesSubstring: aString]]
		ifAbsent: []) notNil