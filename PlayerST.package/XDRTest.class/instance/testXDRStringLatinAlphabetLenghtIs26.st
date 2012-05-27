as yet unclassified
testXDRStringLatinAlphabetLenghtIs26
	self
		assert: ('ABCDEFGHIJKLMNOPQRSTUVWXYZ' xdrString unsignedLongAt: 1 bigEndian: true)
				= 26