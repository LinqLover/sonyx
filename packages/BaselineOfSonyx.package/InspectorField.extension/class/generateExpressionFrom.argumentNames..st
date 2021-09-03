*BaselineOfSonyx-support-override
generateExpressionFrom: aBlock argumentNames: argumentNames
	 
	| blockNode arguments variables context receiver |
	self flag: #experimental.
	blockNode := aBlock decompile veryDeepCopy. "some literals are singletons, see #becomeForward: below"
	arguments := blockNode arguments collect: #name.
	variables := Dictionary new.
	variables
		at: #true put: true;
		at: #false put: false;
		at: #nil put: nil.
	receiver := aBlock receiver.
	receiver class allInstVarNames
		withIndexDo: [:name :index |
			variables at: name put: (receiver instVarAt: index)].
	context := aBlock outerContext.
	context tempNames
		withIndexDo: [:name :index |
			variables at: name put: (context namedTempAt: index)].
	blockNode nodesDo: [:node |
		self flag: #ct. "Should we introduce #nodesCollect: instead of using dangerous #becomeForward:?"
		{
			[node isVariableNode not].
			[node isVariableNode and: [node key isVariableBinding] and: [(self environment bindingOf: node key key) == node key]].
			[| argumentIndex |
			argumentIndex := arguments indexOf: node name.
			argumentIndex isZero
				ifFalse: [node name: (argumentNames at: argumentIndex)];
				not].
			[variables at: node name
				ifPresent: [:value |
					value isLiteral
						ifTrue: [node becomeForward: (LiteralNode new key: value)];
						yourself]
				ifAbsent: [^ nil]].
		} detect: #value ifNone: [^ nil]].
	^ String streamContents: [:stream |
		blockNode
			printStatementsOn: stream
			indent: 0].