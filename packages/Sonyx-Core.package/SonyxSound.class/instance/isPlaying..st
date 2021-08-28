playing
isPlaying: aBoolean
	 
	isPlaying = aBoolean ifTrue: [^ self].
	
	isPlaying := aBoolean.
	
	(self isWaiting and: [primitiveSound synchronous ~= false ==> [isPlaying not]])
		ifTrue: [semaphore signal].
	
	self triggerEvent: #changedPlaying.