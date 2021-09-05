accessing
editorType: aSymbol
	 
	textEditor owner
		visible: aSymbol = #text;
		disableLayout: aSymbol ~= #text.
	
	sandblocksEditor owner
		visible: aSymbol = #sandblocks;
		disableLayout: aSymbol ~= #sandblocks.