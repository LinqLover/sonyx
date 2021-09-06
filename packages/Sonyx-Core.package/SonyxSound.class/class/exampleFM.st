examples
exampleFM
	"self exampleFM play"

	^ SonyxSound new
		squeakSound: #flute1;
		pitch: [:t | t sigmoid into: 220 to: 440];
		yourself