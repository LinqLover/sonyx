initialization
newSandblocksEditor

	^ SonyxSandblocksEditor new
		vResizing: #rigid;
		height: 200;
		width: 200;
		
		colorPolicy: SonyxSandblocksTheme new;
		"compileTime: #compileOnChange;" flag: #todo; "keeps failing"
		suggestAlways: true;
		openMorphInView: (SonyxSandblocksContainer new
			setFromSource: self defaultExpression;
			annotationMorph: self;
			yourself);
		
		yourself