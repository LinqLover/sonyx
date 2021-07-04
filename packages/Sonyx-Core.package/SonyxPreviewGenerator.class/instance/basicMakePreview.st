as yet unclassified
basicMakePreview
	 
	| block |
	mocks := Dictionary new.
	block := Compiler new
		evaluate: self expression
		in: nil
		to: self newMock
		environment: self environment
		notifying: self
		ifFail: [self error]
		logged: false.
	^ block value