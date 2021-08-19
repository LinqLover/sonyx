private
assureSteadySoundService
	 
	(silence ifNil: [silence := (RepeatingSound repeatForever: (RestSound dur: 10)) play])
		isPlaying ifFalse: [silence play].