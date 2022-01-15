sorting
sort: anArray

	| size l m r c f t mi a b k |
	(size := anArray size) <= 1 ifTrue: [^ anArray].
	
	l := 1.
	r := anArray size.
	c := anArray shallowCopy.
	m := 1.
	[r - l < m] whileFalse:
		[l to: r - 1 by: 2 * m do: [:i |
			f := i.
			mi := i + m - 1.
			t := i + (2 * m) - 1 min: r.
			
			a := k := f.
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
			
			self assert: (anArray copyFrom: f to: t) isSorted].
		
		m := m * 2].
	
	^ anArray