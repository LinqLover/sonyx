accessing
allVisualizations

	^ SonyxStudyLEDVisualization allSubclasses reject: [:ea | ea isAbstract]