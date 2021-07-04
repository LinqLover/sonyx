*Sonyx-Core-annotations-menu
sonyxAnnotationItems: aMenu
	
	<codePaneMenu> 
	<menuPriority: 390>
	"| annotationsInSelection |
	
	annotationsInSelection := self annotationsInSelection."
	
	| annotationsInSelection |
aMenu
		add: 'add sonyx annotation' action: #addSonyxAnnotationToSelection.
	
	aMenu addLine.
	
	annotationsInSelection := self annotationsInSelection.
	(annotationsInSelection anySatisfy: [:a | a isKindOf: SonyxBPAnnotation]) ifTrue: [
		aMenu add: 'remove sonyx annotation' action: #removeSonyxAnnotationFromSelection].
	
	^ aMenu