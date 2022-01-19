running
run

	"
	self run
	
	TASK:
	- IDENTIFY *one* bottleneck in this regular expression and RESOLVE it.
	- EXPLAIN the bottleneck and your solution.
	"

	| pattern string |
	string := 'a    b    c    d4'.
	pattern := '(?<=\w\s*)\w\d'.
	^ pattern asRegex matchesIn: string