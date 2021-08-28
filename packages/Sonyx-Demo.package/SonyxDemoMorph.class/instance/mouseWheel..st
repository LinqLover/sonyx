event handling
mouseWheel: anEvent
	 
	"self flash."self color: (Color h: self color hue s: self color saturation v: (anEvent wheelDelta r from: -200 to: 200)).
	"<bpSonyxAnnotation id: 4537688 expression: [SonyxSound new
		squeakSound: #oboe1;
		synchronous: false;
		volume: 0.1;
		pitch: ((anEvent wheelDelta r from: -1000 to: 1000)
			into: 440
			to: (anEvent wheelDelta y > 0 ifTrue: [880] ifFalse: [220]));
		duration: 0.3 seconds;
		yourself]>" anEvent"</bpSonyxAnnotation>".
	Transcript showln: anEvent wheelDelta.