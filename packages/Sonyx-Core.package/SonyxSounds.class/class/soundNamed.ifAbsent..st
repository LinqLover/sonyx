accessing
soundNamed: aSymbol ifAbsent: exceptionBlock
	 
	(aSymbol endsWith: 'Sound') ifFalse: [
		^ self soundNamed: (aSymbol , 'Sound') asSymbol ifAbsent: exceptionBlock].
	
	^ (self respondsTo: aSymbol)
		ifTrue: [self perform: aSymbol]
		ifFalse: [exceptionBlock value]