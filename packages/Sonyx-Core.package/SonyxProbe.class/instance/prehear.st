prehearing
prehear
	 
	| preview |
	preview := self makePreviewSound.
	preview ifNil: [^ self inform: 'Variable expression, cannot play demo'].
	SonyxServer current play: preview for: self.