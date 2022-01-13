accessing
griffleAll: integers

	| results |
	results := Array withAll: integers.
	1 to: results size do: [:i |
		results at: i put: (self griffle: (results at: i)).
		results].
	^ results