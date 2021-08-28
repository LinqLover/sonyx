*Sonyx-Core-*Babylonian-Compiler-override
updateAndRemoveBPMethods: aSelector
	
	| theClass method methodHasInstalledInstrumentation sourceIsNotInstrumented layerName |
	
	theClass := self.
	method := theClass>>aSelector. 

	sourceIsNotInstrumented := (method methodClass compilerClass new methodSourceRequiresBPLayers: method getSource) not.
	layerName := method methodClass compilerClass bpInstrumentedLayerName.
	methodHasInstalledInstrumentation := method isContextSMethod and: [method isLayered and: [method allInvolvedLayers includes: layerName]].
	
	(sourceIsNotInstrumented and: [methodHasInstalledInstrumentation]) ifTrue: [
		method removePartialMethod: (method partialMethodFor: layerName)].