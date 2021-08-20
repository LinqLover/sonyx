requests
addIssueWithTitle: titleString body: bodyString
	 
	| result |
	result := "<bpSonyxAnnotation id: 3320067 expression: [SonyxSound new
		squeakSound: #brownHead;
		yourself]>" self"</bpSonyxAnnotation>"
		clientDo: [:client | | args |
			args := JsonObject new
				at: #title put: titleString;
				at: #body put: bodyString;
				yourself.
			client httpPost: self baseUrl , '/issues' content: args asJsonString type: 'application/vnd.github.v3+json' do: [:req | req headerAt: 'Authorization' put: 'token ', client token]]
		ifError: [:error | ^ error signal].
	
	^ self parseIssue: result