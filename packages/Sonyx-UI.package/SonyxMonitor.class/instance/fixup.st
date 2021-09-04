actions
fixup
	 
	| action |
	action := Project uiManager chooseFromLabeledValues: (OrderedDictionary new
		at: 'Fixup normally (clean up dangling sounds)' put: [tracer fixup: false];
		at: 'Fixup aggressively (stop all sounds)' put: [tracer fixup: true];
		at: 'Forget all errors (choose this if you can''t hear anything)' put: [tracer class resetError];
		at: 'Cancel' put: [^ self];
		yourself).
	action value.