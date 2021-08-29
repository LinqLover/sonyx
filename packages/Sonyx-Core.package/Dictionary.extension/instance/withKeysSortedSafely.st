*Sonyx-Core-sorting-pseudo-override
withKeysSortedSafely

	| sorted |
	self flag: #moveUpstream.
	sorted := OrderedDictionary new: self size.
	self keysSortedSafely do: [:key | sorted at: key put: (self at: key)].
	^ sorted