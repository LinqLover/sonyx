as yet unclassified
selectedProbeIndex: anInteger
	 
	self selectProbe: (anInteger isZero ifFalse: [self probes at: anInteger]).