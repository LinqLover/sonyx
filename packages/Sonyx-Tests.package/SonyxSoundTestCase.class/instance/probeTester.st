accessing
probeTester
	 
	^ probeTester ifNil: [
		probeTester := (SonyxProbeTester for: self)
			methodClass: self methodClass;
			methodSelector: self methodSelector;
			yourself.
		self wrapTest: [:block |
			[probeTester setUpDuring: block]
				ensure: [probeTester := nil]].
		probeTester]