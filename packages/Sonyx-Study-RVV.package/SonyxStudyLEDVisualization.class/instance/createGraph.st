updating
createGraph

	| graph |
	graph := EllipseMorph new
		width: (self width min: self height);
		height: (self width min: self height);
		center: self center;
		borderWidth: self class lineWidth;
		borderColor: self class lineColor.
	
	graph color: (self baseColor alpha: self ratio).
	
	^ graph