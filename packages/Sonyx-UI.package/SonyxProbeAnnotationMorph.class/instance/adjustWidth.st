layouting
adjustWidth
	
	self owner ifNil: [^ self].
	BPStyler withoutSidebarAnnotations: [ 
		self width: self owner width - self left - 40]