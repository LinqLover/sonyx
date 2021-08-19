initialization
newEditorMorph
	 
	| container |
	container := self newLabelContainerMorph.
	
	expressionEditorMorph :=    SBBrowserEditor new.
	expressionEditorMorph
		"hResizing: #spaceFill;"
		vResizing: #rigid;
		height: 200;
		"minHeight: 100;"
		width: 200;
		yourself.
	expressionEditorMorph
		colorPolicy: SBLightPlusTheme new.
	"expressionEditorMorph compileTime: #compileOnChange." "currently disabled because pressing escape after changing a symbol to accept is not straightforward"
	expressionEditorMorph suggestAlways: true.
	expressionEditorMorph openMorphInView: (SonyxSandblocksContainer new
		setFromSource: self defaultExpression;
		annotationMorph: self;
		yourself).
	
	container addMorph: expressionEditorMorph.
	^ container