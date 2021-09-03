*Sonyx-Core-*sound-synthesis-override
asSound
	 
	"Return a sound. Either from the sound library via SampleSound, or from another sound source, or else the Beeper default"
	{SampledSound. AbstractSound. SonyxSounds}
		do: [:source | 
			(source
				soundNamed: self
				ifAbsent: [])
					ifNotNil: [:sound | ^ sound]].
	^ Beeper default