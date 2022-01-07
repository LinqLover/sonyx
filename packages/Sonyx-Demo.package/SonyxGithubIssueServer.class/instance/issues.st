requests
issues

	| results |
	results := self
		clientDo: [:client |
			client httpGet: self baseUrl, '/issues' do: [:request |
				request contentType: self acceptedContentType.
				self authorizeRequest: request forClient: client]]
		ifError: [:error | ^ error signal].
	
	^ results collect: [:result | self parseIssue: result]