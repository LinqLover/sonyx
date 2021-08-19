actions
removeSelection
	 
	(self selectedProbe ifNil: [^ self]) uninstall.
	self selectProbe: nil.