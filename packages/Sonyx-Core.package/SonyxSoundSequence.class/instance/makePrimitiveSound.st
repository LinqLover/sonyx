playing
makePrimitiveSound
	 
	| primitiveSound |
	primitiveSound := SequentialSound new.
	sounds do: [:sound |
		sound ifNotNil: [
			primitiveSound add: sound makePrimitiveSound]].
	^ primitiveSound