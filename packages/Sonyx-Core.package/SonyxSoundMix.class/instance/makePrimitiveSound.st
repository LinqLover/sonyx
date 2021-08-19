playing
makePrimitiveSound
	 
	| primitiveSound |
	primitiveSound := MixedSound new.
	sounds do: [:sound |
		sound ifNotNil: [
			primitiveSound add: sound makePrimitiveSound]].
	^ primitiveSound