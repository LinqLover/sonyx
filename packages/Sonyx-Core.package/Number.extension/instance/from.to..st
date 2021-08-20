*Sonyx-Core-support
from: min to: max
	 
	min = max ifTrue: [^ min].
	self < min ifTrue: [^ 0].
	self >= max ifTrue: [^ 1].
	^ ((min to: max) floatIndexOf: self) - 1 / (max - min)