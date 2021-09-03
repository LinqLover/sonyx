sounds-accessing
lionSound
	 
	<generated>
	<resource: #mixkit license: #sfxFree url: 'https://mixkit.co/free-sound-effects/'>
	^ Sounds at: #Lion ifAbsentPut: [SampledSound fromWaveStream: (Base64MimeConverter mimeDecodeToBytes: self lionSamples readStream)]