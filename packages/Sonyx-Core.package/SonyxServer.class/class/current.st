accessing
current
	
	^ Current ifNil: [self initializeServer. Current]