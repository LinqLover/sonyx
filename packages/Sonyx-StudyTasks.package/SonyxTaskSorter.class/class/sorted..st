sorting
sorted: aCollection

	"TASK:
	- UNDERSTAND how the sorting function works, i.e., what the underlying algorithm is.
	"
	^ self new sort: (Array withAll: aCollection)