*Sonyx-Study-Base-breakpoints-override
toggleBreakOnEntry

	"Install or uninstall a halt-on-entry breakpoint"

	| selectedMethod |
	SonyxStudy checkPermissionForBreakPointOr: [^ self].
	
	self selectedClassOrMetaClass ifNil: [ ^self].
	selectedMethod := self selectedClassOrMetaClass
		compiledMethodAt: self selectedMessageName
		ifAbsent: [^ self].
	selectedMethod hasBreakpoint
		ifTrue:
			[BreakpointManager unInstall: selectedMethod]
		ifFalse:
			[BreakpointManager 
				installInClass: self selectedClassOrMetaClass
				selector: self selectedMessageName].
	self changed: #messageList