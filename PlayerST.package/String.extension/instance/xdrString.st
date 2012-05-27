*PlayerST
xdrString
	^ self size xdrUnsignedInteger , self asByteArray
		, (ByteArray new:  4 - (self size \\ 4))