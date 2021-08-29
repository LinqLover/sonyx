scripts
recompileAnnotations
	 
	"All methods that have already been shipped with annotations need to be recompiled to register them in the SonyxTracer."
	 
	Utilities authorInitialsPerSe isEmptyOrNil ifTrue: [
		^ Utilities useAuthorInitials: 'xyz' during: [self recompileAnnotations]].
	
	((PackageInfo named: 'Sonyx-Demo') methods collect: #compiledMethod thenSelect: [:method | method bpRecompile methodReference compiledMethod methodReference isContextSMethodReference]) do: [:method |
		method sonyxBpRecompileAfterUpdatingAnnotations: [method sonyxBpAnnotations]].