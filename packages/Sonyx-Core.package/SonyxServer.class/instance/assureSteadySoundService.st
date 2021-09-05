private
assureSteadySoundService
	 
	"Always play a silent sound to assure that the sound service keeps alive (restarting it would cause an unacceptable lag). For more information, see: http://lists.squeakfoundation.org/pipermail/squeak-dev/2021-June/215888.html"

	(silence ifNil: [silence := (RepeatingSound repeatForever: (RestSound dur: 10)) play])
		isPlaying ifFalse: [silence play].