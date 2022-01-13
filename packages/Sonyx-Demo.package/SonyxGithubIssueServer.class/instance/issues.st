requests
issues
	 
	| results |
	results := "<bpSonyxAnnotation id: 5125470 expression: [SonyxSound new
		squeakSound: #tropicalForestBird;
		yourself]>" self"</bpSonyxAnnotation>"
		clientDo: [:client |
			client httpGet: self baseUrl , '/issues' do: [:request |
				request contentType: self acceptedContentType.
				self authorizeRequest: request forClient: client]]
		ifError: [:error | ^ error signal].
	
	^ results collect: [:result | self parseIssue: result]