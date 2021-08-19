private
clientDo: aBlock ifError: errorBlock
	 
	| client response |
	client := WebClient new
		token: token;
		yourself.
	
	response := aBlock value: client.
	response isSuccess ifFalse: [^ "<sonyxBpAnnotation id: 2561539 expression: [SonyxSound new
		squeakSound: #barkTwice;
		yourself]>" errorBlock"</sonyxBpAnnotation>" value: (Error new
		messageText: 'Request failed: ' , response;
		yourself)].
	response code = 204 ifTrue: [^ nil].
	
	^ Json readFrom: response content readStream