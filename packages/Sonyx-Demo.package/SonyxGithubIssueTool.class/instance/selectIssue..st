accessing
selectIssue: anIssue
	 
	selectedIssue := anIssue.
	contents := anIssue ifNotNil: #body.
	self changedAll: #(selectedIssue selectedIssueIndex hasIssueSelected isIssueLocked contents).