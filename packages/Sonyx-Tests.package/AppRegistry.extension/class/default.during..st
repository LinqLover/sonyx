*Sonyx-Tests-accessing
default: aClassOrNil during: aBlock
	 
	| oldDefault |
	oldDefault := self default: aClassOrNil.
	^ [aBlock cull: oldDefault] ensure: [self default: oldDefault]