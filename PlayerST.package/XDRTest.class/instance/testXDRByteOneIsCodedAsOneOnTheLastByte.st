tests
testXDRByteOneIsCodedAsOneOnTheLastByte
	self
		assert: (1 xdrByte at: 4)
				= 1