as yet unclassified
xxxNextRandomFor: aContext
	 
	^ cache at: {#random. aContext method. (thisContext object: aContext receiver eqeq: self) ifFalse: [aContext receiver]. aContext pc} , aContext arguments ifAbsentPut: [random ifNotNil: [:rand | rand next] ifNil: [0.5]]