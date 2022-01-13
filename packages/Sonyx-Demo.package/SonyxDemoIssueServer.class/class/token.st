accessing
token
	 
	Token isEmptyOrNil ifFalse: [^ Token].
	^ Token := Project uiManager requestPassword: ('GitHub access token\(You can generate a new token here: https://github.com/settings/tokens/new)' withCRs asText)