running
run
	"
	self run
	"

	| matches pattern string timeToRun |
	string := 'a    b    c    d4'.
	pattern := '(?<=\w\s*)\w\d'.
	timeToRun := [matches := pattern asRegex matchesIn: string]
		timeToRun milliSeconds.
	self inform: timeToRun asString.
	^ matches