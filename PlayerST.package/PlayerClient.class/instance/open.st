as yet unclassified
open
	| address |
	Socket initializeNetwork.
	socket := Socket newTCP.
	address := NetNameResolver addressForName: self host.
	socket connectTo: address port: self port.
	socket waitForConnectionFor: 10.
	socket receiveDataInto: self banner