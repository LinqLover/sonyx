sorting
mergeSort: anArray

	| size l m r c f t mi a b k |
	(size := anArray size) <= 1 ifTrue: [^ self].
	
	l := 1.
	r := anArray size.
	c := anArray shallowCopy.
	m := 1.
	[r - l < m] whileFalse:
		[l to: r - 1 by: 2 * m do: [:i |
			f := i.
			mi := i + m - 1.
			t := i + (2 * m) - 1 min: r.
			
			a := k := "<bpSonyxAnnotation id: 7206108 expression: [SonyxSoundSequence withAll: (((anArray copyFrom: f to: t) collect: [:ea |
		SonyxSound new
			squeakSound: #flute1;
			pitch: ((ea from: anArray min to: anArray max) into: 220 to: 440);
			duration: 0.2 seconds]) copyWith: (SonyxSound new
		squeakSound: #flute1;
		volume: 0;
		duration: 0.3 seconds))]>"f"</bpSonyxAnnotation>".
			b := mi + 1.
			[a <= mi and: [b <= t]] whileTrue:
				[c at: (k := k + 1) - 1 put:
					(anArray at:
						((anArray at: a) < (anArray at: b)
							ifTrue: [a := a + 1]
							ifFalse: [b := b + 1]) - 1)].
			[a <= anArray size and: [a <= mi]] whileTrue:
				[c at: k put: (anArray at: a).
				k := k + 1.
				a := a + 1].
			anArray replaceFrom: f to: t with: c startingAt: f.
			
			self assert: ("<bpSonyxAnnotation id: 134249 expression: [SonyxSoundSequence withAll: (((anArray copyFrom: f to: t) collect: [:ea |
		SonyxSound new
			squeakSound: #flute1;
			pitch: ((ea from: anArray min to: anArray max) into: 220 to: 440);
			duration: 0.2 seconds]) copyWith: (SonyxSound new
		squeakSound: #flute1;
		volume: 0;
		duration: 0.6 seconds))]>"anArray copyFrom: f to: t"</bpSonyxAnnotation>") isSorted].
		
		m := m * 2].
	
	^ anArray