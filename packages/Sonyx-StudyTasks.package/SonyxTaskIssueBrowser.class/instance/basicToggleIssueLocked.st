actions
basicToggleIssueLocked
	 
	| issue |
	issue := self selectedIssue.
	issue := self server issue: issue number setLocked: issue locked not.
	self selectIssue: issue.