examples
exampleAM
	 
	"self exampleAM play"

	^ SonyxSound new
		squeakSound: #flute1;
		duration: 3 seconds;
		volume: [:t | (t * 120) sin from: -1 to: 1];
		yourself