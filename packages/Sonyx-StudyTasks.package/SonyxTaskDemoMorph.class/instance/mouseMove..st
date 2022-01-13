event handling
mouseMove: anEvent

	SBWatch report: (anEvent position x from: self left to: self right) for: 618119819.
	
	self borderColor: (Color h: anEvent timeStamp / 10 s: 0.8 v: 0.85)