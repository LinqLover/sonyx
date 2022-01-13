accessing
ratio

	| bits avg |
	bits := self dataInWindow collect: [:ea |
		(ea ~~ self) asBit.
		
		].
	avg := (bits withIndexCollect: [:value :index | value * index]) sum / (bits withIndexCollect: [:value :index | index]) sum.
	^ avg / self maxValue