requests
unlockIssue: number
	 
	self
		clientDo: [:client | | args |
			args := JsonObject new
				at: 'lock_reason' put: 'too heated';
				yourself.
			client httpDelete: self baseUrl , '/issues/' , number , '/lock' do: [:req | req headerAt: 'Authorization' put: 'token ', client token]]
		ifError: [:error | ^ error signal].