actions
toggleEditor
	 
	self editorType: (self editorType caseOf: {
		[#text] -> [#sandblocks].
		[#sandblocks] -> [#text]
	})