updating
dataInWindow

	| minDataIndex |
	minDataIndex := self data findLast: [:seq | seq size ~= self dataValue size].
	^ self data allButFirst: minDataIndex