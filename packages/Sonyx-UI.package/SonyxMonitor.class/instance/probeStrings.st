accessing - toolbuilder
probeStrings
	 
	| stringCounts |
	self flag: #workaround. "To support stable selections, make sure that every string is unique by appending whitespaces."
	
	stringCounts := Dictionary new.
	^ self probes collect: [:probe | | string |
		string := self probeTextFor: probe.
		stringCounts at: string put: (stringCounts at: string ifAbsent: [0]) + 1.
		string , (String new: (stringCounts at: string) - 1 withAll: Character home)]