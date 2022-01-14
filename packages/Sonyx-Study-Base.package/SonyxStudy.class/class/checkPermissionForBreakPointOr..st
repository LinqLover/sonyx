features
checkPermissionForBreakPointOr: cancelBlock

	self isBreakPointAllowed ifTrue: [^ nil].
	self inform: 'Break points are disabled, find another approach'.
	^ cancelBlock value