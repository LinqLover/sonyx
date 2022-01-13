*Sonyx-Study-Solutions
runSonyx

	"
	self runSonyx
	"

	| matches pattern string timeToRun |
	string := 'a    b    c    d42  e f1'.
	pattern := '(?<=\w\s*)\w(?=\d+)'.
	timeToRun := [matches := pattern asRegex matchesIn: (string as: SonyxTaskStringSonyx)]
		timeToRun milliSeconds.
	self inform: timeToRun asString.
	^ matches