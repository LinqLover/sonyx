initialization - buttons
newCollapseButton
	 
	^ self
		newButtonNamed: #collapseButton
		label: 'toggle details'
		icon: BPIcons moreHorizontalIcon
		action: #collapseOrExpand