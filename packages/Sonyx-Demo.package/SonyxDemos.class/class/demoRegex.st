demos
demoRegex
	 
	"
	self demoRegex
	"
	 
	| pattern1 pattern2 string |
	string := 'a    b    c    d4'.
	pattern1 := '(?<=\w\s*)\w\d'.
	
	self
		inform: ('Going to match\	<1p>\against regex\	<2s>\\(Press Cmd + dot to interrupt)' withCRs expandMacrosWith: string with: pattern1);
		doAndWait: [pattern1 asRegex matchesIn: (SonyxDemoStream on: string)].
	
	pattern2 := '\w\s*\w\d'.
	
	self
		inform: ('Going to match\	<1p>\against regex\	<2s>\\(Press Cmd + dot to interrupt)' withCRs expandMacrosWith: string with: pattern2);
		doAndWait: [pattern2 asRegex matchesIn: (SonyxDemoStream on: string)].