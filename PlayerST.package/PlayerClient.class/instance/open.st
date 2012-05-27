as yet unclassified
open
	Socket initializeNetwork.
	socket := Socket newTCP.
	socket connectTo: self host asByteArray port: self port.
	socket waitForConnectionFor: 10.
	socket receiveDataInto: self banner