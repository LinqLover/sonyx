requests
editIssue: number withTitle: titleString body: bodyString
	 
	| result |
	result := "<sonyxBpAnnotation id: 7800984 expression: [SonyxSound new
		squeakSound: #greenBackBird;
		yourself]>" self"</sonyxBpAnnotation>"
		clientDo: [:client | | args |
			args := JsonObject new
				at: #title put: titleString;
				at: #body put: bodyString;
				yourself.
			self client: client patch: self baseUrl , '/issues/' , number content: args asJsonString type: 'application/vnd.github.v3+json' do: [:req | req headerAt: 'Authorization' put: 'token ', client token]]
		ifError: [:error | ^ error signal].
	
	^ self parseIssue: result