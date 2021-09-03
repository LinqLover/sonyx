*Sonyx-Core-accessing-pseudo-override
pitch
	 
	self flag: #moveUpstream.
	^ scaledIndexIncr * self samplingRate * 2.0 / (ring monoSampleCount * ScaleFactor)