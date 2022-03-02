private
clientDo: aBlock ifError: errorBlock

	| client response |
	client := WebClient new
		token: token;
		yourself.
	
	response := aBlock value: client.
	response isSuccess ifFalse: [
		^ errorBlock value: (Error new
			messageText: 'Request failed: ', response;
			yourself)].
	response code = 204 ifTrue: ["No content"
	^ nil].
	
	^ Json readFrom: response content readStream