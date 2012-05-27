as yet unclassified
startDemo6
	"player stage-2.1.1/worlds/simple.cfg"
	| laser |
	laser := playerClient requestInterfaceLaserWithIndex: 0 access: playerClient playerOpenMode.
	playerClient startThread.
	[laser isDataReady] whileFalse.
	100
		timesRepeat:[laser getData.
			].
	laser getData inspect.
	playerClient stopThread.
	playerClient close