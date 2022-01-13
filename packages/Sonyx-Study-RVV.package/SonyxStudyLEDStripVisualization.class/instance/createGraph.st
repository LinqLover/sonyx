updating
createGraph

	| container window |
	container := Morph new beTransparent.
	container changeTableLayout; listDirection: #leftToRight.
	window := self dataInWindow.
	1
		to: self dataValue size
		do: [:i | container addMorphBack: (self newVisualizationFor: (window collect: [:seq | seq at: i]))].
	^ container