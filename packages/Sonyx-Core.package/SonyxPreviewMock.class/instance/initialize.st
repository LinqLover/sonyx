as yet unclassified
initialize
	 
	super initialize.
	
	cache := PluggableDictionary new
		equalBlock: [:array :otherArray | array size = otherArray size and: [(1 to: array size) allSatisfy: [:i | (array at: i) == (otherArray at: i)]]];
		hashBlock: [:array | array inject: 0 into: [:hash :ea | hash bitXor: ea identityHash]];
		yourself.