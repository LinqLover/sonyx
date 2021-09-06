updating
noteInstVarAccessTo: anObject at: index put: value
	 
	^ "<bpSonyxAnnotation id: 9108550 expression: [({Point. Rectangle} includes: anObject class) ifTrue: [
		SonyxSound new
			squeakSound: #marimba;
			pitch: (anObject class caseOf: {
				[Point] -> [220].
				[Rectangle] -> [440]}) * (index - 1 * 2 + 1 / index);
			synchronous: false]]>" self"</bpSonyxAnnotation>"