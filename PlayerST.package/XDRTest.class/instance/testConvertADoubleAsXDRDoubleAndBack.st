tests
testConvertADoubleAsXDRDoubleAndBack
"Fails right now for Pharo 5.0/6.0"
	"self
		assert: (1.0 xdrDouble doubleAt: 1 bigEndian: true)
				= 1.0.
	self
		assert: (-1.0 xdrDouble doubleAt: 1 bigEndian: true)
				= -1.0"