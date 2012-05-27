as yet unclassified
startDemo11
	"player stage-2.1.1/worlds/simple.cfg"
	| simulation p |
	simulation := playerClient requestInterfaceSimulationWithIndex: 0 access: playerClient playerClient.
	playerClient startThread.
	[simulation isDataReady] whileFalse.
	p := simulation getData.
	playerClient stopThread.
	playerClient close