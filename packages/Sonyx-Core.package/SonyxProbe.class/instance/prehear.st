as yet unclassified
prehear
	 
	| preview |
	preview := self makePreviewSound.
	self ifNil: [^ self inform: 'Variable expression, cannot play demo'].
	[SonyxServer current play: preview for: self] fork.