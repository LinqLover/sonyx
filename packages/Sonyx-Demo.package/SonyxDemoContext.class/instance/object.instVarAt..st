mirror primitives
object: anObject instVarAt: index
	 
	^ super object: anObject instVarAt:    "<sonyxBpAnnotation id: 9485050 expression: [({PluggableSystemWindow. Workspace} includes: anObject class) ifTrue: [
		SonyxSound new
			squeakSound: PluckedSound default;
			pitch: (anObject class caseOf: {
				[PluggableSystemWindow] -> [220].
				[Workspace] -> [440]});
			synchronous: false]]>" index"</sonyxBpAnnotation>" 