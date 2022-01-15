*Sonyx-Study-Solutions
runSonyx

	"
	self runSonyx
	"

	| pattern string |
	string := 'a    b    c    d42  e f1'.
	pattern := '(?<=\w\s*)\w(?=\d+)'.
	^ pattern asRegex matchesIn: string