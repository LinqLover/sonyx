updating
aspectDependencies
	 
	^ Dictionary new
		at: #windowTitle put: #(#labelString);
		at: #probeStrings put: #(probes);
		at: #selectedProbeIndex put: #(selectedProbe);
		at: #hasSelection put: #(selectedProbe);
		at: #contents put: #(selectedProbe);
		yourself