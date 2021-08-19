playing
basicPlaySound: primitiveSound andWaitFor: sonyxSound
	 
	sonyxSound waitDuring: [self basicPlaySound: primitiveSound].
	self flag: #todo. "Periodically check whether sound service is still alive, and if it is not, free blocking"