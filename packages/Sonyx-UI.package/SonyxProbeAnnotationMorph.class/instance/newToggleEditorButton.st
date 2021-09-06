initialization - buttons
newToggleEditorButton
	 
	^ self
		newButtonNamed:#toggleEditorButton
		label: 'toggle editor'
		icon: BPIcons supportIcon
		action: #toggleEditor