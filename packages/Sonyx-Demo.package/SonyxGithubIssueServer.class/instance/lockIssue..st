requests
lockIssue: number
	 
	self
		clientDo: [:client | | args |
			args := JsonObject new
				at: 'lock_reason' put: 'too heated';
				yourself.
			client httpPut: self baseUrl , '/issues/' , number , '/lock' content: args asJsonString type: 'application/vnd.github.v3+json' do: [:req | req headerAt: 'Authorization' put: 'token ', client token]]
		ifError: [:error | ^ error signal].