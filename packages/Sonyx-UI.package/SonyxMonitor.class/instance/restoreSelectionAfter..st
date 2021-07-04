as yet unclassified
restoreSelectionAfter: aBlock
	 
	| result |
	result := aBlock value.
	self changed: #selectedProbe.
	^ result