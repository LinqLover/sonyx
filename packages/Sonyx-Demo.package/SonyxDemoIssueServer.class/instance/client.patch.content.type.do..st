private
client: aWebClient patch: urlString content: postData type: contentType do: aBlock
	 
	| request |
	aWebClient initializeFromUrl: urlString.
	request := aWebClient requestWithUrl: urlString.
	request method: 'POST'.
	contentType ifNotNil: [request contentType: contentType].
	request contentLength: postData size.
	aWebClient userAgent ifNotNil: [:agent | request headerAt: 'User-Agent' put: agent].
	aBlock value: request.
	^aWebClient sendRequest: request content: postData readStream size: postData size