playing
newSqueakSound
	
	| squeakSound |
	squeakSound := SequentialSound new.
	sounds do: [:sound |
		sound ifNotNil: [
			squeakSound add: sound newSqueakSound]].
	^ squeakSound