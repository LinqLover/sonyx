running
setUpMethod
	 
	self wrapTest: [:block |
		self compile: self methodClass source: self methodSource.
		block ensure: [self methodClass removeSelector: self methodSelector]].