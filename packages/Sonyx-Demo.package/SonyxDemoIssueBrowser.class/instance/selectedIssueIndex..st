accessing
selectedIssueIndex: anInteger

	self selectIssue: (anInteger isZero ifFalse: [self issues at: anInteger]).