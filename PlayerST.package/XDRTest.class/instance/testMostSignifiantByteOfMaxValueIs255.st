as yet unclassified
testMostSignifiantByteOfMaxValueIs255
	self
		assert: (2147483647 xdrInteger at: 4)
				= 255