testing
testDefaultHostIsLocalhost
	self
		assert: playerClient defaultHost = '127.0.0.1'