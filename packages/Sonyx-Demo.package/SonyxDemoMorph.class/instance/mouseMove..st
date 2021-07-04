event handling
mouseMove: anEvent
	 

	Transcript showln: "<sonyxBpAnnotation id: 2717283 expression: [SonyxSoundMix new
	add: (SonyxSound new
		balance: 0;
		squeakSound: (#flute1 asSound copy duration: 0.4);
		pitch: ((anEvent position x from: self left to: self right) into: 220 to: 440);
		synchronous: false;
		volume: [:t | t into: 0.1 to: 0];
		yourself);
	add: (SonyxSound new
		balance: 1;
		squeakSound: (#flute1 asSound copy duration: 0.4);
		pitch: ((anEvent position y from: self top to: self bottom) into: 440 to: 880);
		synchronous: false;
		volume: [:t | t into: 0.1 to: 0];
		yourself);
	yourself ]>" anEvent"</sonyxBpAnnotation>".