I generate sample sounds from an expression that returns a SonyxSound. If the expression requests data from the receiver or from other unresolved arguments, I try to answer these requests with random data by providing a SonyxPreviewMock.

Experimental. Note that while this works fine for the most demo expressions, it is an insufficient heuristic that is not capable of resolving all requests.