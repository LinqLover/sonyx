*Sonyx-Study-Base-private-override
checkContextSelection

	contextStackIndex = 0 ifTrue: [self contextStackIndex: 1 oldContextWas: nil].
	
	SonyxStudyCondition isRunning ifTrue: [ThreadSafeRandom value next squared seconds wait].