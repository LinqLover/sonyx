updating
progress
	
	^ mSecsSinceStart / (self duration ifNil: [^ nil]) seconds asMilliSeconds