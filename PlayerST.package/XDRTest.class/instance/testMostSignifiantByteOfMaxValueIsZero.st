tests
testMostSignifiantByteOfMaxValueIsZero
	self
		assert: (-2147483648 xdrInteger at: 4)
				= 0