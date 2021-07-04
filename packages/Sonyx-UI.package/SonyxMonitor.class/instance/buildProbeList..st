toolbuilder
buildProbeList: aBuilder
	 
	^ aBuilder pluggableListSpec new
		model: self;
		list: #probeStrings;
		getIndex: #selectedProbeIndex;
		setIndex: #selectedProbeIndex:;
		yourself