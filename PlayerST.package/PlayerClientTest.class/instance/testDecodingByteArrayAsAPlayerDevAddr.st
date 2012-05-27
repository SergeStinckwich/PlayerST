testing
testDecodingByteArrayAsAPlayerDevAddr
	| b pda |
	b := #(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ) asByteArray.
	pda := playerClient decodeDevAddressFrom: b.
	self
		assert: [pda host = 0].
	self
		assert: [pda robot = 0].
	self
		assert: [pda interf = 0].
	self
		assert: [pda index = 0]