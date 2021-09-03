event handling
mouseDown: anEvent
	 
	"<bpSonyxAnnotation id: 1144525 expression: [SonyxSound new
		balance: 0;
		squeakSound: PluckedSound default;
		pitch: ((anEvent position y from: self top to: self bottom)
			into: 220
			to: 440);
		synchronous: false;
		balance: (anEvent position x from: self left to: self right);
		yourself]>" self"</bpSonyxAnnotation>" color: Color orange.