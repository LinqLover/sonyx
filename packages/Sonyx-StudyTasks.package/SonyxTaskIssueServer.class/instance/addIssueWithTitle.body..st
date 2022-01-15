requests
addIssueWithTitle: titleString body: bodyString

	| result |
	result := self
		clientDo: [:client | | args |
			args := JsonObject new
				at: #title put: titleString;
				at: #body put: bodyString;
				yourself.
			client
				httpPost: self baseUrl, '/issues'
				content: args asJsonString
				type: self acceptedContentType
				do: [:request | self authorizeRequest: request forClient: client]]
		ifError: [:error | ^ error signal].
	
	^ self parseIssue: result