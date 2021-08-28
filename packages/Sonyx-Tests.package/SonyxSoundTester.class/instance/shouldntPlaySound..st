asserting
shouldntPlaySound: aBlock
	 
	| result |
	self testCase deny: (self executeShouldPlaySound: [result := aBlock value]).
	^ result