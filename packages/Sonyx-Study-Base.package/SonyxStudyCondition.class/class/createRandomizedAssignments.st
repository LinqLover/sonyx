as yet unclassified
createRandomizedAssignments
	<exampleNamed: 'some example 89' self: 'SonyxStudyCondition'>
	| tasks associations ids |
	tasks := #(regex server sorting).
	associations := Array streamContents: [:stream |
		self allTypes permutationsDo: [:condition |
			stream nextPut: ("<bpProbe id: 185251>"condition"</bpProbe>" with: tasks collect: #->) shuffled]].
	ids := 1 to: "<bpProbe id: 1061464>"associations"</bpProbe>" size.
	^ "<bpProbe id: 1498022>"(ids with: associations shuffled collect: #->) as: Dictionary"</bpProbe>"