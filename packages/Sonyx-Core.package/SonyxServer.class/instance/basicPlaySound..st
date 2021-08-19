playing
basicPlaySound: primitiveSound
	 
	
	self flag: #todo. "Background process?"
	mutex critical: [primitiveSound play].