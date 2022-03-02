examples
openExample

	"
	self openExample
	"

	| morph |
	morph := self new
		position: 75 @ 250;
		extent: 150 @ 400;
		yourself.
	morph
		borderWidth: 5;
		borderColor: Color green darker.
	
	morph openInWorld.