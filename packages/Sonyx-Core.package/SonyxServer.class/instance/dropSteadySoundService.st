private
dropSteadySoundService
	 
	(silence ifNil: [^ self]) isPlaying ifFalse: [^ self].
	silence pause.