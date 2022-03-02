actions
basicRenameIssue
	 
	| issue title |
	issue := self selectedIssue.
	title := Project uiManager request: 'Issue title' initialAnswer: issue title.
	title isEmptyOrNil ifTrue: [^ false].
	issue := self server editIssue: issue number withTitle: title body: issue body.
	
	self changedAll: #(issues issueTitles).
	self selectIssue: issue.
	
	^ true