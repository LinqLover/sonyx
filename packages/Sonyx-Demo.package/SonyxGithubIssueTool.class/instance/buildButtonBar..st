toolbuilder
buildButtonBar: aBuilder
	 
	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: (OrderedCollection new
			add: (aBuilder pluggableActionButtonSpec new
				model: self;
				label: 'add';
				action: #newIssue;
				yourself);
			add: (aBuilder pluggableActionButtonSpec new
				model: self;
				label: 'rename';
				action: #renameIssue;
				enabled: #hasIssueSelected;
				yourself);
			add: (aBuilder pluggableActionButtonSpec new
				model: self;
				label: 'lock';
				state: #isIssueLocked;
				action: #toggleIssueLocked;
				enabled: #hasIssueSelected;
				yourself);
			add: (aBuilder pluggableButtonSpec new
				model: self;
				label: 'remove';
				action: #removeIssue;
				enabled: #hasIssueSelected;
				yourself);
			yourself);
		yourself