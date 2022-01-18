submorphs-add/remove
showSuggestionsMenu: menu near: aMorph

	menu
		editor: self;
		topLeft: aMorph positionInWorld + (0 @ aMorph height).
	
	menu openInWorld; resize.