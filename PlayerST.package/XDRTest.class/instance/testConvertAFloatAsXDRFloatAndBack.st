tests
testConvertAFloatAsXDRFloatAndBack
	self
		assert: (1.0 xdrFloat floatAt: 1 bigEndian: true)
				= 1.0.
	self
		assert: (-1.0 xdrFloat floatAt: 1 bigEndian: true)
				= -1.0