icons-accessing
soundIcon
	 
	"Auto-generated.
	Copyright Mobius/Wikimedia Commons: https://en.wikipedia.org/wiki/File:Speaker_Icon.svg, CC0"
	^ Icons at: #soundIcon
	ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self soundIconContents readStream) ].