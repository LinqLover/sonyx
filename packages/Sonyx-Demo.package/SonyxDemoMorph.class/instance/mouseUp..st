event handling
mouseUp: anEvent
	 
	"<bpSonyxAnnotation id: 6600842 expression: [ SonyxSoundMix new
	add: (SonyxSound new
		balance: 0;
		squeakSound: (PluckedSound default);
		pitch: ((anEvent position x from: self left to: self right) into: 220 to: 440);
		synchronous: false;
		yourself);
	add: (SonyxSound new
		balance: 1;
		squeakSound: PluckedSound default;
		pitch: ((anEvent position y from: self top to: self bottom) into: 440 to: 880);
		synchronous: false;
		yourself);
	yourself
]>" self"</bpSonyxAnnotation>" color: Color red muchDarker.