toolbuilder
buildTopButton: aBuilder
	 
	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: (OrderedCollection new
			add: (aBuilder pluggableButtonSpec new
				model: self;
				label: 'activate sonyx';
				state: #isActive;
				action: #toggleActivation;
				yourself);
			add: (aBuilder pluggableButtonSpec new
				model: self;
				label: 'fixup (in case of trouble)';
				action: #fixup;
				color: #fixupButtonColor;
				yourself);
			yourself);
		yourself