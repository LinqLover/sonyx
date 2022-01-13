private
baseUrl
	 
	^ 'https://api.github.com/repos/{1}/{2}' format: {self owner. self repository}