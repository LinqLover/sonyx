actions
editFieldInitialContent: aString onChange: changeBlock onAccept: acceptBlock
	
	| textMorph |
	^ (textMorph := super editFieldInitialContent: aString onChange: changeBlock onAccept: acceptBlock)
		model: ((textMorph model as: SonyxBPCodeValueModel)
			aboutToStyleBlock: [:styler |
				self containingBrowser ifNotNil: [:browser | browser aboutToStyle: styler].
				styler parseAMethod: false.
				self flag: #todo. "fix styling: need a) to add mising [brackets] and b) temporaries from current method (and maybe even block) ..."
				"true"false]);
		yourself