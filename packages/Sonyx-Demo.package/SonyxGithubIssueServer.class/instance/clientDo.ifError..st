private
clientDo: aBlock ifError: errorBlock
	 
	| client response |
	client := WebClient new
		token: token;
		yourself.
	
	response := aBlock value: client.
	response isSuccess ifFalse: [^ "<bpSonyxAnnotation id: 2561539 expression: [SonyxSound new
		squeakSound: #clink;
		yourself]>" errorBlock"</bpSonyxAnnotation>" value: (Error new
		messageText: 'Request failed: ' , response;
		yourself)].
	response code = 204 "No content" ifTrue: [^ nil].
	
	^ Json readFrom: response content readStream