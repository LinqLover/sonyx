suggestions
artefactCompletionBindingsFor: aBlock

	^ (AbstractSonyxSound withAllSubclasses reject: #isAbstract) collect: #binding