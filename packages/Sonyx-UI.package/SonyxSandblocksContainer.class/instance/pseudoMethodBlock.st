private
pseudoMethodBlock
	 
	| methodNode |
	methodNode := [SBPCMapper new buildNodeMapFor: self methodText asString in: self methodClass]
		on: UndeclaredVariableWarning do: #resume
		on: SyntaxErrorNotification do: [^ nil].
	^ (methodNode accept: SBStMethodToBlocks new) privateOwner: self parentSandblock