as yet unclassified
contents: aString notifying: requestor
	 

	| probe |
	probe := self selectedProbe ifNil: [^ false].
	^ probe newExpression: aString