private
pseudoMethodBlock

	"Try to compile the containing method from the CodeHolder to provide all bindings for completion suggestions."
	| methodNode |
	methodNode := [SBPCMapper new
		buildNodeMapFor: self methodText asString
		in: self methodClass]
			on: UndeclaredVariableNotification do: #resume
			on: SyntaxErrorNotification do: [^ nil].
	
	^ (methodNode accept: SBStMethodToBlocks new)
		privateOwner: self parentSandblock;
		yourself