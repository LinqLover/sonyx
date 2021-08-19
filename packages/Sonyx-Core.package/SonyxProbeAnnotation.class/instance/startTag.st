serialization
startTag
	 
	^ '"' , '<sonyxBpAnnotation id: {1} expression: [{2}]>"' format: {self id. self expression}