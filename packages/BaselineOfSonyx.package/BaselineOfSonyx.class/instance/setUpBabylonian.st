scripts
setUpBabylonian

	ToolSet default: (self environment classNamed: #BPToolSet).
	SystemBrowser default: (self environment classNamed: #BPBrowser).
	
	Preferences
		setFlag: #confirmFirstUseOfStyle toValue: false;
		flag: #workaround. "Bug in Babylonian"