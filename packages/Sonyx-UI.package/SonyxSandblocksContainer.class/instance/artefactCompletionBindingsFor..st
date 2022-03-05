suggestions
artefactCompletionBindingsFor: aBlock

	"Only suggest sonyx sound classes."
	^ (AbstractSonyxSound withAllSubclasses reject: #isAbstract) collect: #binding