playing
makePrimitiveSound
	 
	^ primitiveSound := SonyxPrimitiveSound new
		sonyxSound: self squeakSound: self squeakSound copy;
		updateProperties