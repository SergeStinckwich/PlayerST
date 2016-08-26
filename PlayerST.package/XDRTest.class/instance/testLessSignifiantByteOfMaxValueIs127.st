tests
testLessSignifiantByteOfMaxValueIs127
	self
		assert: (2147483647 xdrInteger at: 1)
				= 127