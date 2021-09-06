compiling
bindingOf: aString
	 
	^ aString -> (mocks at: aString ifAbsentPut: [self newMock])