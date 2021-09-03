sounds-accessing
brownHeadSound
	 
	<generated>
	<resource: #bbc url: 'https://sound-effects.bbcrewind.co.uk/licensing' edited: true>
	^ Sounds at: #BrownHead ifAbsentPut: [SampledSound fromWaveStream: (Base64MimeConverter mimeDecodeToBytes: self brownHeadSamples readStream)]