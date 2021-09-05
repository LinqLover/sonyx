updating
updateProperties
	 
	| progress |
	progress := self progress.
	
	(sonyxSound valueOf: #pitch for: progress) ifNotNil: [:pitch | | rawPitch |
		rawPitch := self nameOrNumberToPitch: pitch.
		(squeakSound pitch closeTo: rawPitch) ifFalse: [
			squeakSound pitch: rawPitch]].
	(sonyxSound valueOf: #volume for: progress) ifNotNil: [:volume |
		(squeakSound loudness closeTo: volume) ifFalse: [
			squeakSound loudness: volume]].
	(sonyxSound valueOf: #balance for: progress) ifNotNil: [:balance |
		(self balance closeTo: balance) ifFalse: [
			self balance: balance]].
	(sonyxSound valueOf: #duration for: progress) ifNotNil: [:duration |
		| rawDuration |
		rawDuration := duration asMilliSeconds / 1000.
		(self duration closeTo: rawDuration) ifFalse: [
			self duration: rawDuration]].
	
	(sonyxSound valueOf: #synchronous for: progress) ifNotNil: [:boolean |
		self synchronous = boolean ifFalse: [
			self synchronous: boolean]].