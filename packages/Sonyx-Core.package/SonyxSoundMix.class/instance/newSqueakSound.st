playing
newSqueakSound
	
	| squeakSound |
	squeakSound := MixedSound new.
	sounds do: [:sound |
		sound ifNotNil: [
			squeakSound add: sound newSqueakSound]].
	^ squeakSound