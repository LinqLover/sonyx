requests
editIssue: number withTitle: titleString body: bodyString

	| result |
	result := "<bpSonyxAnnotation id: 959882 expression: [SonyxSound new
		squeakSound: #barkTwice;
		yourself]>"self"</bpSonyxAnnotation>"
		clientDo: [:client | | args |
			args := JsonObject new
				at: #title put: titleString;
				at: #body put: bodyString;
				yourself.
			self
				client: client
				patch: self baseUrl , '/issues/' , number
				content: args asJsonString
				type: self acceptedContentType
				do: [:request | self authorizeRequest: request forClient: client]]
		ifError: [:error | ^ error signal].
	
	^ self parseIssue: result