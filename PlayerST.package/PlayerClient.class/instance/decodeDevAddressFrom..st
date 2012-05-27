as yet unclassified
decodeDevAddressFrom: aByteArray 
	| p |
	p := PlayerDevAddr new.
	p
		host: (aByteArray longAt: 1 bigEndian: true).
	p
		robot: (aByteArray longAt: 5 bigEndian: true).
	p
		interf: (aByteArray longAt: 9 bigEndian: true).
	p
		index: (aByteArray longAt: 13 bigEndian: true).
	^ p