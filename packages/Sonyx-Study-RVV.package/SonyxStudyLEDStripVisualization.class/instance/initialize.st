initialization
initialize

	super initialize.
	self
		changeTableLayout;
		listDirection: #leftToRight.
	pinVisualizationClass := self defaultPinVisualizationClass