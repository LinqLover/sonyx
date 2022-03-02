features
checkPermissionForMessageSetOr: cancelBlock

	self isMessageSetAllowed ifTrue: [^ nil].
	self inform: 'Senders/implementors are disabled, find another approach'.
	^ cancelBlock value