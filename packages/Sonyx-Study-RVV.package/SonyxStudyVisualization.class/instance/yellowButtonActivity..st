event handling
yellowButtonActivity: shiftState

	| menu |
	menu := self buildYellowButtonMenu: self currentHand.
	^ menu popUpInWorld: self currentWorld