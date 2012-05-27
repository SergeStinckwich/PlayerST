as yet unclassified
testXDRDoubleIsCodedOnEightBytes
	self
		assert: [0.0 xdrDouble size = 8]