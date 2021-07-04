toolbuilder
buildButtonBar: aBuilder
	 
	^ aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: (OrderedCollection new
			add: (aBuilder pluggableActionButtonSpec new
				model: self;
				label: 'browse';
				action: #browseSelection;
				enabled: #hasSelection;
				yourself);
			add: (aBuilder pluggableButtonSpec new
				model: self;
				label: 'disable';
				state: #isSelectionDisabled;
				action: #toggleSelectionDisablement;
				enabled: #hasSelection;
				yourself);
			add: (aBuilder pluggableButtonSpec new
				model: self;
				label: 'remove';
				action: #removeSelection;
				enabled: #hasSelection;
				yourself);
			add: (aBuilder pluggableButtonSpec new
				model: self;
				label: 'play demo';
				enabled: #hasSelection;
				action: #playDemo;
				yourself);
			yourself);
		yourself