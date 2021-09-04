private
informUser: aString during: aBlock
	 
	| promise |
	promise := Promise new.
	[Transcript
		openIfNone;
		showln: aString;
		cr;
		showln: '(Press Cmd + dot to interrupt)'.
	[ | result |
	result := aBlock value.
	Transcript
		cr;
		showln: 'Done!';
		cr.
	promise resolveWith: result]
		on: Error do: [:ex | promise rejectWith: ex]] fork.
	^ promise