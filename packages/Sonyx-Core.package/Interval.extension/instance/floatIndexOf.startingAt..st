*Sonyx-Core-accessing
floatIndexOf: anElement startingAt: startIndex
	

	| index |
	index := (anElement - start / step) + 1.
	(index between: startIndex and: self size) ifFalse: [ ^0 ].
	^index