as yet unclassified
getRequestedDeviceWithInterfaceCode: aNumber index: anIndex 
	"Returns an object of type PlayerDevice containing the requested device."
	| pda |
	[readyRequestDevice] whileFalse.
	pda := newPd deviceAddress.
	pda interf = aNumber & (pda index = anIndex)
		ifTrue: [^ newPd].
	^ nil