sounds-accessing
tropicalForestBirdSound
	 
	<generated>
	<resource: #mixkit license: #sfxFree url: 'https://mixkit.co/free-sound-effects/'>
	^ Sounds at: #TropicalForestBird ifAbsentPut: [SampledSound fromWaveStream: (Base64MimeConverter mimeDecodeToBytes: self tropicalForestBirdSamples readStream)]