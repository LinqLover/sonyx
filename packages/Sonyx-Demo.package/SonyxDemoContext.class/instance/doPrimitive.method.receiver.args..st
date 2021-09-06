private
doPrimitive: primitiveIndex method: meth receiver: rcvr args: arguments
	 
	"Overridden to disable primitives for inst var accesses and fall back to normal variable access simulation."
	
	primitiveIndex = 18 "primitiveMakePoint"
		ifTrue: [
			^ self class primitiveFailTokenFor: #'deoptimized'].
	
	(primitiveIndex >= 264 and: [primitiveIndex <=  519]) "primitiveLoadInstVar"
		ifTrue: [
			^ self push: (self object: rcvr instVarAt: primitiveIndex - 263)].
	
	^ super doPrimitive: primitiveIndex method: meth receiver: rcvr args: arguments