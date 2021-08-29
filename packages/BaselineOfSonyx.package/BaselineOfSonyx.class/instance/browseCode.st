welcome contents - actions
browseCode

	| browser list |
	browser := BPBrowser open containingWindow.
	list := browser submorphs detect: [:ea |
		(ea respondsTo: #getListSelector) and: [ea getListSelector = #systemCategoryList]].
	list listFilterAppend: 'Sonyx'.
	^ browser