support
switchSonyxStudy

	(Project uiManager
		chooseFromLabeledValues:
			((self allTypes
				collect: [:type |
					('Switch to {1}' format: {type}) ->
						[self resetStudyTasks.
						self switchToType: type]]
				as: OrderedDictionary)
					at: 'Stop' put: [self stop];
					yourself)
		title: 'Sonyx Study')
			value.