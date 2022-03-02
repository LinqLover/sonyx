examples
openExample

	"
	self openExample
	
	TASK:
	- IDENTIFY *two* reasons in these two classes why the issue browser is unnecesarily slow.
	"
	 
	| server |
	server := self new.
	server owner: (Project uiManager request: 'repository owner' initialAnswer: 'LinqLover').
	server repository: (Project uiManager request: 'repository name' initialAnswer: (server owner = 'LinqLover' ifTrue: ['TestRepo'] ifFalse: [''])).
	server token: self token.
	
	server browse.