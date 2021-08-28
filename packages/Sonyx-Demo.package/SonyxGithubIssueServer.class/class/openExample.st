examples
openExample
	 
	"
	self openExample
	"
	 
	| server |
	server := SonyxGithubIssueServer new.
	server owner: (Project uiManager request: 'repository owner' initialAnswer: 'LinqLover').
	server repository: (Project uiManager request: 'repository name' initialAnswer: (server owner = 'LinqLover' ifTrue: ['TestRepo'] ifFalse: [''])).
	server token: self token.
	
	server browse.
	SonyxMonitor open.
	ToolSet browseClass: self category: #requests.