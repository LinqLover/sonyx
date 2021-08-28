private
restoreSelectionAfter: aBlock
	 
	| result |
	result := aBlock value.
	self changed: #selectedProbe.
	^ result