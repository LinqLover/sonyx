actions
basicRemoveIssue
	 
	[self server removeIssue: self selectedIssue number] ifError: [^ self].
	self changed: #(issues issueTitles).
	^ true