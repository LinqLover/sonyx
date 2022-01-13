accessing
griffle: anInteger

	| x |
	x := anInteger even
		ifTrue: [anInteger]
		ifFalse: [anInteger + 1].
	x := x ** 2.
	^ x