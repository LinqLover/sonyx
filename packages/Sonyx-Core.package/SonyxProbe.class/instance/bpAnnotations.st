private
bpAnnotations

	^ self methodReference compiledMethod bpAnnotations select: [:annotation | annotation id = self id]