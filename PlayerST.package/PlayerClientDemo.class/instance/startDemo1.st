as yet unclassified
startDemo1
	"player simple.cfg"
	Transcript cr; show: 'Server version = '; show: playerClient banner asString; cr.
	Transcript show: 'Number of devices = ';
		 show: playerClient devAddrList size;
		 cr.
	Transcript show: 'Devices = ';
		 show: playerClient devAddrList asString;
		 cr.
	playerClient close