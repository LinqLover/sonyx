event handling
mouseMove: anEvent
	 
	Transcript showln: "<bpSonyxAnnotation id: 640959 expression: [SonyxSound new
		balance: 0;
		squeakSound: #flute1;
		duration: 0.3 seconds;
		pitch: ((anEvent position y from: self top to: self bottom)
			into: 220
			to: 440);
		synchronous: false;
		yourself]>" anEvent"</bpSonyxAnnotation>".