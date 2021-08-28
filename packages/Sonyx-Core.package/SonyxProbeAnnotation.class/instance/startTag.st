serialization
startTag
	 
	self flag: #workaround. "Infinite loop in BPCompiler, see https://github.com/hpi-swa-lab/babylonian-programming-smalltalk/issues/59#issuecomment-877506891"
	^ '"' , '<bpSonyxAnnotation id: {1} expression: [{2}]>"' format: {self id. self expression}