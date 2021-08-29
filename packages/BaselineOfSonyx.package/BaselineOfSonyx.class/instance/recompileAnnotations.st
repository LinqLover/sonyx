scripts
recompileAnnotations
	"All methods that have already been shipped with annotations need to be recompiled to register them in the SonyxTracer."
	 
	((((self class project version: 'baseline') packages collect: [:spec | PackageInfo named: spec name]) gather: #methods) collect: #compiledMethod thenSelect: [:method | method methodReference isContextSMethodReference]) do: [:method |
		method bpRecompile.
		method sonyxBpRecompileAfterUpdatingAnnotations: [method sonyxBpAnnotations]].