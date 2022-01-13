accessing
acceptContents: aStringOrText

	| issue |
	issue := self selectedIssue ifNil: [^ self].
	issue := self server editIssue: issue number withTitle: issue title body: aStringOrText asString.
	self selectIssue: issue.
	^ true