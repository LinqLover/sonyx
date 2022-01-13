updating
newVisualizationFor: data

	^ self pinVisualizationClass new
		data: data;
		updateVisualization;
		vResizing: #spaceFill