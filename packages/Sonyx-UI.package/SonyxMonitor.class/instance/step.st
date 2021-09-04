updating
step
	 
	self isStepping ifFalse: [^ self].
	
	self updateProbes.
	self changed: #fixupButtonColor.