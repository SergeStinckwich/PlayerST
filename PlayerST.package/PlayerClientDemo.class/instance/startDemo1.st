as yet unclassified
startDemo1
	"player stage-2.1.1/worlds/simple.cfg"
	Transcript cr; show: 'Server version = '; show: playerClient banner asString; cr.
	Transcript show: 'Number of devices = ';
		 show: playerClient devAddrList size;
		 cr.
	Transcript show: 'Devices = ';
		 show: playerClient devAddrList asString;
		 cr.
	playerClient close