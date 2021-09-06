generating
basicMakePreview
	 
	| block result |
	mocks := Dictionary new.
	block := Compiler new
		evaluate: self expression
		in: nil
		to: self newMock
		environment: self environment
		notifying: self
		ifFail: [self error]
		logged: false.
	result := block value.
	^ ((thisContext objectClass: result) includesBehavior: SonyxPreviewMock)
		ifFalse: [result]