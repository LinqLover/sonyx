private
executeShouldPlaySound: aBlock
	 
	self soundSystem reset.
	
	aBlock value.
	0.1 seconds wait.
	
	^ self soundSystem lastPlayedSound notNil