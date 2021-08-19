private
pseudoMethodBlock
	 
	| methodNode |
	methodNode := SBPCMapper new buildNodeMapFor: self methodText asString in: self methodClass.
	^ (methodNode accept: SBStMethodToBlocks new) privateOwner: self parentSandblock