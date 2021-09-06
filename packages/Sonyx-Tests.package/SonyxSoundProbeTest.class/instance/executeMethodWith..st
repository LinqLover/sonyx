support
executeMethodWith: arg
	 
	self
		assert: (self methodResultFor: arg)
		equals: (self methodClass new perform: self methodSelector with: arg).