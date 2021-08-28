event handling
mouseMove: anEvent
	 
	"<bpSonyxAnnotation id: 640959 expression: [SonyxSound new
		balance: 0;
		squeakSound: #flute1;
		duration: 0.3 seconds;
		pitch: ((anEvent position y from: self top to: self bottom)
			into: 220
			to: 440);
		synchronous: false;
		volume: 0.2;
		yourself]>" self"</bpSonyxAnnotation>" borderColor: (Color h: anEvent timeStamp / 10 s: 0.8 v: 0.85)