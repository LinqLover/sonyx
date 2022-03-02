demos
demoSort

	"
	This example uses sound probes to sonify a sorting algorithm. Listen to the sonification to get a better understanding of how the sorting algorithm works.
	
	self demoSort
	"
	 
	ToolSet browse: SonyxDemoSorter selector: #mergeSort:.
	[SonyxDemoSorter sorted: #(7 17 9 1 5 2 4 3 5 4 9)] fork.