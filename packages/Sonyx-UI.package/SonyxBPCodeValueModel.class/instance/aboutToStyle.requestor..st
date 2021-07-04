morphic ui
aboutToStyle: styler requestor: requestor

	^ self aboutToStyleBlock
		ifNil: [super aboutToStyle: styler requestor: requestor]
		ifNotNil: [:block | block cull: styler cull: requestor]