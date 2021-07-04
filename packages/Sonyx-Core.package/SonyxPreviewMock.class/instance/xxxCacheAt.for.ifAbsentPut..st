as yet unclassified
xxxCacheAt: anObject for: aContext ifAbsentPut: factoryBlock
	 
	^ cache at: {anObject. aContext method. (thisContext object: aContext receiver eqeq: self) ifFalse: [aContext receiver]. aContext pc} , aContext arguments ifAbsentPut: [factoryBlock value]