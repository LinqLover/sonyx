accessing
editorType

	^ textEditor owner visible
		ifTrue: [#text]
		ifFalse: [#sandblocks]