requests
removeIssue: number

	self
		clientDo: [:client |
			client
				httpDelete: self baseUrl , '/issues/' , number
				do: [:request | self authorizeRequest: request forClient: client]]
		ifError: [:error | ^ error signal].