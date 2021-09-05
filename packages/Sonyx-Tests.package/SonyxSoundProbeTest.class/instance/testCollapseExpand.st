tests
testCollapseExpand
	 
	self installProbe.
	self assert: (self methodAnnotationMorph includesVisibleSubstring: 'SonyxSound').
	
	self methodAnnotationMorph collapseOrExpand.
	self deny: (self methodAnnotationMorph includesVisibleSubstring: 'SonyxSound').
	self assert: ((self methodAnnotationMorph fullBounds; height) < 50).
	
	self methodAnnotationMorph collapseOrExpand.
	self assert: (self methodAnnotationMorph includesVisibleSubstring: 'SonyxSound').
	self assert: ((self methodAnnotationMorph fullBounds; height) > 50).