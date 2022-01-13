requests
removeIssue: number
	 
	"<bpSonyxAnnotation id: 2283031 expression: [SonyxSound new
		squeakSound: #coyote;
		yourself]>" self"</bpSonyxAnnotation>"
		clientDo: [:client |
			client
				httpDelete: self baseUrl , '/issues/' , number
				do: [:request | self authorizeRequest: request forClient: client]]
		ifError: [:error | ^ error signal].