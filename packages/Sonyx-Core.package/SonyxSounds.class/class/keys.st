accessing
keys
	 
	^ (self class methodsInCategory: 'sounds-accessing') collect: [:selector | (selector allButLast: 'Sound' size) asSymbol]