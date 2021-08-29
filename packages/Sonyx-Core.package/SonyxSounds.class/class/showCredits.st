credits
showCredits
	 
	"self showCredits"

	| credits |
	credits := String streamContents: [:stream |
		self resources withKeysSortedSafely associations do: [:assoc |
			stream
				print: assoc key;
				cr.
			assoc value do: [:method |
				stream
					tab;
					nextPutAll: method asString;
					cr]]].
	credits editWithLabel: 'sonyx credits'.