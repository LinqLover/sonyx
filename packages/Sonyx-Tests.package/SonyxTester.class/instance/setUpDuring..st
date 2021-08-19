running
setUpDuring: aBlock

	self setUp.
	^ aBlock ensure: [self tearDown]