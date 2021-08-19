requests
issue: number setLocked: aBoolean
	 
	"<sonyxBpAnnotation id: 1008614 expression: [SonyxSound new
		squeakSound: #marimba;
		pitch: (aBoolean ifTrue: [440] ifFalse: [220])]>" aBoolean"</sonyxBpAnnotation>"
		ifTrue: [self lockIssue: number]
		ifFalse: [self unlockIssue: number].
	^ self issues detect: [:issue | issue number = number]