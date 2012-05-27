*PlayerST
xdrShort
	| bytes |
	bytes := ByteArray new: 4.
	bytes
		at: 3
		put: (self bitShift: -8).
	bytes at: 4 put: self \\ 256.
	^ bytes