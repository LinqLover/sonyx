running
run

	"
	self run
	"

	| pattern string |
	string := 'a    b    c    d4'.
	pattern := '(?<=\w\s*)\w\d'.
	^ pattern asRegex matchesIn: string