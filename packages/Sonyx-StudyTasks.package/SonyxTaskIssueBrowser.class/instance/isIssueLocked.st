testing
isIssueLocked
	 
	self hasIssueSelected ifFalse: [^ false].
	^ self selectedIssue locked