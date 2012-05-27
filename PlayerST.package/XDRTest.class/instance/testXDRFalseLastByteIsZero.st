as yet unclassified
testXDRFalseLastByteIsZero
	self
		assert: [false xdrBool last = 0]