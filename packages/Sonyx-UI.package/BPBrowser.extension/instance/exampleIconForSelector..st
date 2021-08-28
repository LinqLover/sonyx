*Sonyx-UI-message list-override
exampleIconForSelector: selector
	 
	| class method |
	class := self selectedClassOrMetaClass ifNil: [^ nil].
	method := [class >> selector] on: KeyNotFound do: [^ nil].
	
	^ method bpExampleIcon