toolbuilder
buildIssueList: aBuilder
	 
	^ aBuilder pluggableListSpec new
		model: self;
		list: #issueTitles;
		getIndex: #selectedIssueIndex;
		setIndex: #selectedIssueIndex:;
		yourself