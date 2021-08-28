*Sonyx-Core
containsSonyxSounds
	 
	^ self methodDict anySatisfy: [:method | method sonyxBpAnnotations notEmpty]