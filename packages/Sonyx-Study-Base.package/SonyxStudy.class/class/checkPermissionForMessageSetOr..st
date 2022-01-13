features
checkPermissionForMessageSetOr: cancelBlock

	self isMessageSetAllowed ifTrue: [^ self].
	self inform: 'Senders/implementors are disabled, find another approach'