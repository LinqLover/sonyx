accessing
duration
	
	^ (squeakSound respondsTo: #duration)
		ifTrue: [squeakSound duration]