as yet unclassified
bindingOf: aString
	 
	^ aString -> (mocks at: aString ifAbsentPut: [self newMock])