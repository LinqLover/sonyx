as yet unclassified
probeTextFor: aProbe
	 
	| text |
	text := '{1} ({2})' asText format: {aProbe methodReference. aProbe enabled ifTrue: ['on'] ifFalse: ['off']}.
	aProbe isPlaying ifTrue: [text allBold].
	aProbe enabled ifFalse: [text addAttribute: (TextColor color: Color gray)].
	^ text