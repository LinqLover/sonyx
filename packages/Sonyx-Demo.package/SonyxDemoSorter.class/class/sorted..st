sorting
sorted: aCollection

	^ self new mergeSort: (Array withAll: aCollection)