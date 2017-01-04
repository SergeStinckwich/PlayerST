*PlayerST
xdrFloat
	| fltArray word |
	fltArray := FloatArray with: self.
	word := fltArray basicAt: 1.
	^ (ByteArray new: 4)
		unsignedLongAt: 1
		put: word
		bigEndian: true;
		 yourself