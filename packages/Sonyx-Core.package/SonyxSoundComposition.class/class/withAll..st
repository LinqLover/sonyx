instance creation
withAll: sounds
	
	| sound |
	sound := self new.
	sounds do: [:ea |
		sound add: ea].
	^ sound