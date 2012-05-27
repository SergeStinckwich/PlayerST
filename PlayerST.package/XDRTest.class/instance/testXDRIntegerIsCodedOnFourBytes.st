as yet unclassified
testXDRIntegerIsCodedOnFourBytes
	self
		assert: [0 xdrInteger size = 4]