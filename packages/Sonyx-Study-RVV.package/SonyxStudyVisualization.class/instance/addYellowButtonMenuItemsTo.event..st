menu
addYellowButtonMenuItemsTo: aMenu event: anEvent

	aMenu
		add: 'Change visualization'
		action: [(self ownerThatIsA: RVVWatch) openSwitchVisualizationMenu].
	self editableProperties
		ifNotEmpty: [aMenu addLine];
		do: [:property |
			aMenu
				add: ('Set {1} ({2})' format: {self nameForProperty: property. self stringForProperty: property value: (self perform: property)})
				selector: #editProperty:
				argument: property]