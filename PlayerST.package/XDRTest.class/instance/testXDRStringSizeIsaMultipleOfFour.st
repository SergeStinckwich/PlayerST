as yet unclassified
testXDRStringSizeIsaMultipleOfFour
	self
		assert: ['Hello World' xdrString size \\ 4 = 0]