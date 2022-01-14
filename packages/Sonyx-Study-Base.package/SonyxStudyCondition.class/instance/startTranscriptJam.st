transcript jam
startTranscriptJam

	transcriptJam := [[Transcript showln: self currentHand lastEvent.
		(1 to: 500) atRandom milliSeconds wait] repeat] fork.