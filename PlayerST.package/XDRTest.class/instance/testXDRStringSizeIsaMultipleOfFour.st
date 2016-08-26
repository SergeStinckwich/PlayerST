tests
testXDRStringSizeIsaMultipleOfFour
	self
		assert: 'Hello World' xdrString size \\ 4 = 0