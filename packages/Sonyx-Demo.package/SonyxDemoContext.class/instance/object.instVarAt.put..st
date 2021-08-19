mirror primitives
object: anObject instVarAt: index put: value
	 
	^ super object: anObject instVarAt:  "<sonyxBpAnnotation id: 5713224 expression: [({PluggableSystemWindow. Workspace} includes: anObject class) ifTrue: [
		SonyxSound new
			squeakSound: PluckedSound default;
			pitch: (anObject class caseOf: {
				[PluggableSystemWindow] -> [220].
				[Workspace] -> [440]});
			synchronous: false]]>" index"</sonyxBpAnnotation>" put: value