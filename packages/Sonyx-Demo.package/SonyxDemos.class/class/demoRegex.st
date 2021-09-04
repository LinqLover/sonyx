demos
demoRegex
	 
	"
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