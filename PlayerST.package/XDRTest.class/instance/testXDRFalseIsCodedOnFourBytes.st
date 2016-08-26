tests
testXDRFalseIsCodedOnFourBytes
	self
		assert: false xdrBool size = 4