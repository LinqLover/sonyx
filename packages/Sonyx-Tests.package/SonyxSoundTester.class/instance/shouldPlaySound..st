asserting
shouldPlaySound: aBlock
	 
	| result |
	self testCase assert: (self executeShouldPlaySound: [result := aBlock value]).
	^ result