event handling
mouseWheel: anEvent
	 
	self flash. "<sonyxBpAnnotation id: 4537688 expression: [SonyxSound new
	squeakSound: ('oboe1' asSound copy duration: 0.3);
	synchronous: false;
	volume: 0.1;
	pitch: ((anEvent wheelDelta r from: -1000 to: 1000) into: 440 to: (anEvent wheelDelta y > 0 ifTrue: [880] ifFalse: [220]));
	yourself]>" anEvent"</sonyxBpAnnotation>".
	Transcript showln: anEvent wheelDelta.