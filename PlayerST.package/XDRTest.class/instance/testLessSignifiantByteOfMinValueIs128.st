tests
testLessSignifiantByteOfMinValueIs128
	self
		assert: (-2147483648 xdrInteger at: 1)
				= 128