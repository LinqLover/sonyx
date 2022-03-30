requests
issues

	| results |
	results := "<bpSonyxAnnotation id: 5792578 expression: [SonyxSound new
		squeakSound: #brownHead;
		yourself]>"self"</bpSonyxAnnotation>"
		clientDo: [:client |
			client httpGet: self baseUrl, '/issues' do: [:request |
				request contentType: self acceptedContentType.
				self authorizeRequest: request forClient: client]]
		ifError: [:error | ^ error signal].
	
	^ results collect: [:result | self parseIssue: result]