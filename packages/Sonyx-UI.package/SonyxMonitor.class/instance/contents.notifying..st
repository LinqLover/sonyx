accessing - state
contents: aString notifying: requestor
	 

	| probe |
	probe := self selectedProbe ifNil: [^ false].
	^ probe newExpression: aString