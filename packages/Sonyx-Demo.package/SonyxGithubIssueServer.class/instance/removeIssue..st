requests
removeIssue: number
	 
	| result |
	result := "<bpSonyxAnnotation id: 2283031 expression: [SonyxSound new
		squeakSound: #coyote;
		yourself]>" self"</bpSonyxAnnotation>"
		clientDo: [:client |
			client httpDelete: self baseUrl , '/issues/' , number do: [:req | req headerAt: 'Authorization' put: 'token ', client token]]
		ifError: [:error | ^ error signal].
	^ result