loading
loadFromFileNamed: aFilePath as: selector into: categoryPrefix
	 
	| accessorTemplate contentsTemplate |
	accessorTemplate := '{2}Sound
	<generated>
	^ Sounds at: #{1} ifAbsentPut: [SampledSound fromWaveStream: (Base64MimeConverter mimeDecodeToBytes: self {2}Samples readStream)]'.
	contentsTemplate := '{1}Samples
	<generated>
	^ ''{2}'''.
	
	self class
		compile: (contentsTemplate format: {selector withFirstCharacterDownshifted. (MenuIcons base64ContentsOfFileNamed: aFilePath)})
			classified: categoryPrefix , (categoryPrefix ifNotEmpty: ['-'] ifEmpty: ['']) , 'contents';
		compile: (accessorTemplate format: {selector capitalized. selector withFirstCharacterDownshifted})
			classified: categoryPrefix , (categoryPrefix ifNotEmpty: ['-'] ifEmpty: ['']) , 'accessing'.