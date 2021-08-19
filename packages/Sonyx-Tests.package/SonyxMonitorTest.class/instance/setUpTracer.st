running
setUpTracer

	self wrapTest: [:block | | previousTracer |
		previousTracer := SonyxTracer current.
		SonyxTracer current: SonyxTracer new.
		block ensure: [SonyxTracer current: previousTracer]].