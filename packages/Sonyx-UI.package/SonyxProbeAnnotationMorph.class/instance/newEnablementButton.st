initialization - buttons
newEnablementButton
	 
	^ self
		newCheckboxNamed: #enableButton
		label: 'enable?'
		getState: #enabled
		toggleState: #toggleEnablement