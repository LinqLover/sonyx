scripts
openWelcomeContents
	 
	"self new openWelcomeContents"
	^ (self htmlParse: ('<b>Welcome to Sonyx!</b>

To explore some demos, <a href="code://{1}">browse the SonyxDemos class.</a> To look up the implementation, <a href="code://{2}">browse the sonyx packages.</a>

For more information how to use Sonyx as well as on how to use the Squeak programming system in general, please check out the <a href="code://{3}">readme</a> of the project.' format: {
		self decompile: [BaselineOfSonyx new browseDemos].
		self decompile: [BaselineOfSonyx new browseCode].
		self decompile: [BaselineOfSonyx new openReadme].
	})) edit