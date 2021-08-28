accessing - toolbuilder
selectedProbeIndex: anInteger
	 
	self selectProbe: (anInteger isZero ifFalse: [self probes at: anInteger]).