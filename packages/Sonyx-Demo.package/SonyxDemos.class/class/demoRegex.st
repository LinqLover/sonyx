demos
demoRegex
	 
	"
	This example uses sound probes to monitor all accesses that are made to a string while matching it against a regular expression. Listen to the sonification of the following two regular expressions in order to understand their approach and to assess their efficiency.
	
	self demoRegex
	"
	 
	| pattern1 pattern2 string promise |
	string := 'a    b    c    d4'.
	pattern1 := '(?<=\w\s*)\w\d'.
	pattern2 := '\w\s*\w\d'.
	
	promise := self
		informUser: ('Matching string\	<1p>\against regex\	<2s>' withCRs expandMacrosWith: string with: pattern1)
		during: [
			pattern1 asRegex matchesIn: (SonyxDemoStream on: string)].
	promise := promise >> [2 seconds wait].
	promise := promise >> [self
		informUser: ('Matching string\	<1p>\against regex\	<2s>' withCRs expandMacrosWith: string with: pattern2)
		during: [pattern2 asRegex matchesIn: (SonyxDemoStream on: string)]].
	
	promise ifRejected: [
		BrokenPromise new promise: promise signal].