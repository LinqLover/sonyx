tests
testCollapseExpand
	 
	self installProbe.
	self assert: (self methodAnnotationMorph includesVisibleSubstring: 'SonyxSound').
	
	self methodAnnotationMorph collapseButtonClicked.
	self deny: (self methodAnnotationMorph includesVisibleSubstring: 'SonyxSound').
	self assert: ((self methodAnnotationMorph fullBounds; height) < 50).
	
	self methodAnnotationMorph collapseButtonClicked.
	self assert: (self methodAnnotationMorph includesVisibleSubstring: 'SonyxSound').
	self assert: ((self methodAnnotationMorph fullBounds; height) > 50).