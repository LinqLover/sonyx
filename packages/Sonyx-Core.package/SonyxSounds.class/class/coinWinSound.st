sounds-accessing
coinWinSound
	 
	<generated>
	<resource: #mixkit license: #sfxFree url: 'https://mixkit.co/free-sound-effects/'>
	^ Sounds at: #CoinWin ifAbsentPut: [SampledSound fromWaveStream: (Base64MimeConverter mimeDecodeToBytes: self coinWinSamples readStream)]