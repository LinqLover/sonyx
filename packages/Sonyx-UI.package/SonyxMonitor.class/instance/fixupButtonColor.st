accessing - toolbuilder
fixupButtonColor
	 
	^ tracer hasError
		ifTrue: [Color red]
		ifFalse: [Color transparent]