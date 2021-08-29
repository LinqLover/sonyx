*Sonyx-Demo-sorting
mergeSort2From: firstIndex to: lastIndex into: destination by: aBlock
	 
	"Private. Split the range to be sorted in half, sort each half, and 
	merge the two half-ranges into destination."

	| n firstObject lastObject |
	"Precondition: firstIndex <= lastIndex, self and destination contain the same elements between firstIndex and lastIndex inclusively but not necessarily in the same order"
	(        n := lastIndex - firstIndex) <= 1 ifTrue: [ "Handle 1 and 2 sized ranges directly."
		n = 0 ifTrue: [ ^self ].
		firstObject := self at: firstIndex.
		lastObject := self at: lastIndex.
		(aBlock
			ifNil: [ firstObject <= lastObject ]
			ifNotNil: [ aBlock value: firstObject value: lastObject ])
			ifFalse: [
				destination
					at: lastIndex put: firstObject;
					at: firstIndex put: lastObject ]
			ifTrue: [
				destination
					at: lastIndex put: lastObject;
					at: firstIndex put: firstObject ].
		^self ].
	"<bpSonyxAnnotation id: 9372229 expression: [SonyxSoundSequence withAll: ((self copyFrom: firstIndex to: lastIndex) collect: [:ea |
		SonyxSound new
			squeakSound: #bass1;
			duration: 0.2 seconds;
			pitch: ((ea from: self min to: self max) into: 220 to: 880);
			yourself]), {SonyxSound new squeakSound: (RestSound dur: 0.5)}]>" n := firstIndex + lastIndex // 2"</bpSonyxAnnotation>".
	destination mergeSort2From: firstIndex to: n into: self by: aBlock.
	destination mergeSort2From: n + 1 to: lastIndex into: self by: aBlock.
	"<bpSonyxAnnotation id: 7502699 expression: [SonyxSoundSequence withAll: ((destination copyFrom: firstIndex to: lastIndex) collect: [:ea |
		SonyxSound new
			squeakSound: #mellowBrass;
			duration: 0.2 seconds;
			pitch: ((ea from: self min to: self max) into: 220 to: 880);
			yourself]), {SonyxSound new squeakSound: (RestSound dur: 0.5)}]>" self mergeFirst: firstIndex middle: n last: lastIndex into: destination by: aBlock"</bpSonyxAnnotation>"