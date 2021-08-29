sounds-accessing
greenBackBirdSound
	 
	<generated>
	<resource: #bbc url: 'https://sound-effects.bbcrewind.co.uk/licensing' edited: true>
	^ Sounds at: #GreenBackBird ifAbsentPut: [SampledSound fromWaveStream: (Base64MimeConverter mimeDecodeToBytes: self greenBackBirdSamples readStream)]