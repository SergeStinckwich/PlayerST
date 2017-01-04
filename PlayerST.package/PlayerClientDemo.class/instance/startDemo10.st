as yet unclassified
startDemo10
	"player stage-2.1.1/worlds/simple.cfg"
	| position |
	position := playerClient requestInterfacePosition2DWithIndex: 0 access: playerClient playerClient
	playerClient startThread.
	position speed: 0.1 withTurnRate: 0.0.
	position resetOdometry.
	[position isDataReady] whileFalse.
	position getData inspect.
	playerClient stopThread.
	playerClient close