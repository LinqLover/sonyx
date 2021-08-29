loading
fileInSingleSound: fullName
	 
	| selector |
	selector := Project uiManager request: 'Enter selector name'.
	selector isEmptyOrNil ifTrue: [^ self].
	
	self loadFromFileNamed: fullName as: selector into: 'sounds'.