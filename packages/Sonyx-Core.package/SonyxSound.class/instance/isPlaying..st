accessing
isPlaying: aBoolean
	 
	isPlaying = aBoolean ifTrue: [^ self].
	
	isPlaying := aBoolean.
	
	(self isWaiting and: [sonyxSqueakSound synchronous ~= false ==> [isPlaying not]])
		ifTrue: [semaphore signal].
	
	self triggerEvent: #changedPlaying.