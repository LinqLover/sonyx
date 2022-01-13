features
checkPermissionForBreakPointOr: cancelBlock

	self isBreakPointAllowed ifTrue: [^ self].
	self inform: 'Break points are disabled, find another approach'