toolbuilder
buildTopButton: aBuilder
	 
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'activate sonyx';
		state: #isActive;
		action: #toggleActivation;
		yourself