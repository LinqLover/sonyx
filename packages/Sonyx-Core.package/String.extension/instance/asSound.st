*Sonyx-Core-*sound-synthesis-override
asSound
	
	"Return a sound. Either from the sound library via SampleSound, or from another sound source, or else the Beeper default"
	^ SampledSound
		soundNamed: self
		ifAbsent: [
			AbstractSound
				soundNamed: self
				ifAbsent: [Beeper default]]