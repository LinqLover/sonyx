examples
openExample
	 
	"
	self openExample
	"

	| morph |
	morph := self new
		position: 75 @ 250;
		extent: 100 @ 400;
		yourself.
	morph
		"fillStyle: ((GradientFillStyle ramp: {0 -> (Color gray: 0.05). 1 -> ((Color gray: 0.05) mixed: 0.5 with: Color paleBlue)})
			origin: morph topLeft;
			direction: 0 @ morph height;
			yourself);"
		borderWidth: 5;
		borderColor: Color green darker.
	
	morph openInWorld.
	ToolSet browseClass: SonyxDemoMorph category: 'event handling'.