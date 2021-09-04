testing
isSteady
	 
	^ self currentOrNil ifNil: [false] ifNotNil: [:current | current isSteady]