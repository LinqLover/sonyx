initialization
newSandblocksEditor

	^ SonyxSandblocksEditor new
		vResizing: #rigid;
		height: 200;
		width: 200;
		
		colorPolicy: SonyxSandblocksTheme new;
		"compileTime: #compileOnChange;" "currently disabled because pressing escape after changing a symbol to accept is not straightforward"
		suggestAlways: true;
		openMorphInView: (SonyxSandblocksContainer new
			setFromSource: self defaultExpression;
			annotationMorph: self;
			yourself);
		
		yourself