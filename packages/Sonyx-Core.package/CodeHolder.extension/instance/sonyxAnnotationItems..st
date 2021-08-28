*Sonyx-Core-annotations-menu
sonyxAnnotationItems: aMenu
	 
	<codePaneMenu> 
	<menuPriority: 390>
	"| annotationsInSelection |
	
	annotationsInSelection := self annotationsInSelection."
	
	| annotationsInSelection |
aMenu
		add: 'add sonyx probe' action: #addSonyxAnnotationToSelection.
	
	aMenu addLine.
	
	annotationsInSelection := self annotationsInSelection.
	(annotationsInSelection anySatisfy: [:a | a isKindOf: SonyxProbeAnnotation]) ifTrue: [
		aMenu add: 'remove sonyx probe' action: #removeSonyxAnnotationFromSelection].
	
	^ aMenu