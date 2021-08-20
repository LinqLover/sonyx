requests
issues
	 
	| results |
	results := "<bpSonyxAnnotation id: 5125470 expression: [SonyxSound new
		squeakSound: #tropicalForestBird;
		yourself]>" self"</bpSonyxAnnotation>"
		clientDo: [:client |
			client httpGet: self baseUrl , '/issues' do: [:req |
				req contentType: 'application/vnd.github.v3+json'.
				req headerAt: 'Authorization' put: 'token ', client token]]
		ifError: [:error | ^ error signal].
	
	^ results collect: [:result | self parseIssue: result]