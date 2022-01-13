accessing
forType: aSymbol

	^ self allSubclasses detect: [:class | class type = aSymbol]