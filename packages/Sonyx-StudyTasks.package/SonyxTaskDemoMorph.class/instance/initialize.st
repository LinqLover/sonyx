initialization
initialize
	 
	super initialize.
	
	self color: Color black.
	self addMorph: (self text asTextMorph
		textColor: Color white;
		fillsOwner: true;
		lock;
		yourself).