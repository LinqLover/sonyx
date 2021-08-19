read-only objects
simulatedObject: anObject instVarAt: index put: value
	 
	^ super simulatedObject: anObject instVarAt:  "<sonyxBpAnnotation id: 8511536 expression: [({PluggableSystemWindow. Workspace} includes: anObject class) ifTrue: [
		SonyxSound new
			squeakSound: PluckedSound default;
			pitch: (anObject class caseOf: {
				[PluggableSystemWindow] -> [220].
				[Workspace] -> [440]});
			synchronous: false]]>" index"</sonyxBpAnnotation>" put: value