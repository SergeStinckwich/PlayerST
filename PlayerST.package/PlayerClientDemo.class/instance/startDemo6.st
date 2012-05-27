as yet unclassified
startDemo6
	"player stage-2.1.1/worlds/simple.cfg"
	| laser position|
	position := playerClient requestInterfacePosition2DWithIndex: 0 access: playerClient playerOpenMode.
	laser := playerClient requestInterfaceLaserWithIndex: 0 access: playerClient playerOpenMode.
	playerClient startThread.
	[laser isDataReady] whileFalse.
	(laser getData) inspect.
	playerClient stopThread.
	playerClient closeSocket