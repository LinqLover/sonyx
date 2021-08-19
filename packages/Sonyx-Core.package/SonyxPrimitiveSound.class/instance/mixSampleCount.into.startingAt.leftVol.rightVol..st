sound generation
mixSampleCount: n into: aSoundBuffer startingAt: startIndex leftVol: leftVol rightVol: rightVol
	 
	squeakSound
		mixSampleCount: n
		into: aSoundBuffer
		startingAt: startIndex
		leftVol: leftVol * (1 - self balance)
		rightVol: rightVol * self balance.
	
	sonyxSound isPlaying: self samplesRemaining > 0.