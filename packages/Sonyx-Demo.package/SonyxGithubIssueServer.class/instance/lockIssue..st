requests
lockIssue: number
	 
	self
		clientDo: [:client | 
			| args |
			args := JsonObject new
				at: 'lock_reason' put: 'too heated';
				yourself.
			client
				httpPut: self baseUrl , '/issues/' , number , '/lock'
				content: args asJsonString
				type: self acceptedContentType
				do: [:request | self authorizeRequest: request forClient: client]]
		ifError: [:error | ^ error signal]