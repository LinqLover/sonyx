transcript jam
startTranscriptJam

	"Basically obfuscate the Transcript so that participants have to find a different way to solve the task."
	transcriptJam := [[Transcript showln: self currentHand lastEvent.
		(1 to: 500) atRandom milliSeconds wait] repeat] fork.