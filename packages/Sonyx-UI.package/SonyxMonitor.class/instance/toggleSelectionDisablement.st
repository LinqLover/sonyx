actions
toggleSelectionDisablement
	 
	self restoreSelectionAfter: [
		self selectedProbe enabled: self selectedProbe enabled not.
		self changed: #probes]