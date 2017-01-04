*PlayerST
xdrInteger
	| bytes | 
	bytes := ByteArray new: 4.
	self > 0
		ifTrue: [bytes
				at: 1
				put: (self bitShift: -24)]
		ifFalse: [bytes at: 1 put: ((self bitShift: -24) negated)].
	bytes at: 4 put: self \\ 256.
	bytes at: 3 put: (self bitShift: -8)
			\\ 256.
	bytes at: 2 put: (self bitShift: -16)
			\\ 256.
	^ bytes