actions
basicNewIssue
	 
	| body issue title |
	title := Project uiManager request: 'Issue title'.
	title isEmptyOrNil ifTrue: [^ false].
	body := Project uiManager request: 'Issue content'.
	body isEmptyOrNil ifTrue: [^ false].
	
	issue := self server addIssueWithTitle: title body: body.
	self changedAll: #(issues issueTitles).
	self selectIssue: issue.
	
	^ true