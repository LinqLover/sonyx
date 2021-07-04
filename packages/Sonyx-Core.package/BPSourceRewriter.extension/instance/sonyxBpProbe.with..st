*Sonyx-Core-rewrite rules
sonyxBpProbe: annotation with: originalExpressionSourceNode
	 
	^ annotation register; instrumentationCallFor: (self value: originalExpressionSourceNode)