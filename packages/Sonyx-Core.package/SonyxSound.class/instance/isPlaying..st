playing
isPlaying: aBoolean
	"Inform the receiver about whether the emitted primitive sound is still playing."
	 
	isPlaying = aBoolean ifTrue: [^ self].
	
	isPlaying := aBoolean.
	
	(self isWaiting and: [primitiveSound synchronous ~= false ==> [isPlaying not]])
		ifTrue: [semaphore signal].
	
	self triggerEvent: #changedPlaying.