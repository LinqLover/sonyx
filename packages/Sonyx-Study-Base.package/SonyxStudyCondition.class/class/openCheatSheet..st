cheat sheets
openCheatSheet: aSymbol
	"
	SonyxStudyCondition openCheatSheet: #sonyxCheatSheet.
	SonyxStudyCondition openCheatSheet: #rvvCheatSheet.
	SonyxStudyCondition openCheatSheet: #regexCheatSheet.
	"

	| form sketch window |
	form := self perform: aSymbol.
	sketch := SketchMorph withForm: form.
	sketch extent: sketch extent / 2.
	sketch name: (aSymbol findFeatures joinSeparatedBy: $ ).
	window := sketch openInWindow.
	window paneColor: Color veryVeryLightGray.
	window setLabel: sketch externalName.
	window collapse.
	^ window