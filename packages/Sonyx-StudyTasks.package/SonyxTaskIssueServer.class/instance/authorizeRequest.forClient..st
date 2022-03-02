private
authorizeRequest: aWebRequest forClient: aWebClient

	aWebRequest headerAt: 'Authorization' put: 'token ' , aWebClient token.