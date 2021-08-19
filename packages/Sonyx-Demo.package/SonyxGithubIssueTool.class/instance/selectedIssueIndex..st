accessing
selectedIssueIndex: anInteger
	 
	self do: [self selectIssue: (anInteger isZero ifFalse: [self issues at: anInteger])]