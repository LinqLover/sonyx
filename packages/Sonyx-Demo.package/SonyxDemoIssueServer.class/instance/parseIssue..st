private
parseIssue: result
	 
	^ JsonObject new
		number: result number;
		title: result title;
		body: result body;
		locked: result locked;
		yourself