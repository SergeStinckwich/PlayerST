as yet unclassified
testConvertADoubleAsXDRDoubleAndBack
	self
		assert: [(1.0 xdrDouble doubleAt: 1 bigEndian: true)
				= 1.0].
	self
		assert: [(-1.0 xdrDouble doubleAt: 1 bigEndian: true)
				= -1.0]