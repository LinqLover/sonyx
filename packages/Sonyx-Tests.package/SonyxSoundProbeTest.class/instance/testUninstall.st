tests
testUninstall
	 
	self installProbe.
	self shouldPlaySound: [self executeMethod].
	
	self uninstallProbe.
	self shouldntPlaySound: [self executeMethod].
	"self assert: self methodSource asString equals: (self methodClass sourceCodeAt: self methodSelector) asString."