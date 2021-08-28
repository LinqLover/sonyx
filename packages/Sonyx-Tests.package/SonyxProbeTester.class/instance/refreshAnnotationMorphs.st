private
refreshAnnotationMorphs
	"fight lazy initialization of probes"

	annotationMorphs do: [:annotationMorph | annotationMorph allMorphsDo: #step]