*Sonyx-Study-Base-message list-override
exampleIconForSelector: selector

	| class method bpIcon rvvIcon |
	class := self selectedClassOrMetaClass ifNil: [^ nil].
	method := [class >> selector] on: KeyNotFound do: [^ nil].
	
	bpIcon := method bpExampleIcon.
	rvvIcon := method rvvIcon.
	
	SonyxStudyCondition isRVV ifTrue: [^ rvvIcon].
	SonyxStudyCondition isSonyx ifTrue: [^ bpIcon].
	
	(bpIcon notNil and: [rvvIcon notNil]) ifFalse: [^ bpIcon ifNil: [rvvIcon]].
	^ BPIcons moreVerticalIcon