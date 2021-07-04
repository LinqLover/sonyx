playing
basicPlaySound: squeakSound andWaitFor: sonyxSound
	
	sonyxSound waitDuring: [self basicPlaySound: squeakSound].
	self flag: #todo. "Periodically check whether sound service is still alive, and if it is not, free blocking"