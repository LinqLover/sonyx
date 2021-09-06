running
setUpProbe
	 
	self wrapTest: [:block |
		self installProbe.
		block ensure: [self uninstallProbe]].
	
	self
		switchProbeToTextEditor;
		acceptProbeText: self probeText.
	self assert: self isProbeActive.
	
	self monitor step.