accessing
annotation: anAnnotation
	 
	| expressionSource |
	super annotation: anAnnotation.
	expressionSource := self annotation expression asString.
	"self assert: expressionSource first = $[.
	self assert: expressionSource last = $].
	expressionSource := expressionSource allButFirst allButLast."
	expressionFieldMorph setText: expressionSource.
	expressionEditorMorph artefacts first
		methodReference: self methodReference;
		setFromSource: expressionSource