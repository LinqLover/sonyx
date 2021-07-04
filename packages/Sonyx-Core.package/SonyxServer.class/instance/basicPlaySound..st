playing
basicPlaySound: squeakSound
	 
	
	self flag: #todo. "Background process?"
	mutex critical: [squeakSound play].