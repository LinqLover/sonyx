event handling
mouseWheel: anEvent

	self color: (Color h: self color hue s: self color saturation v: (anEvent wheelDelta r from: -200 to: 200)).
	anEvent.
	Transcript showln: anEvent wheelDelta.