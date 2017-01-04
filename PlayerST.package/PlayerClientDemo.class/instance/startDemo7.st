as yet unclassified
startDemo7
	"player stage-2.1.1/worlds/simple.cfg"
	|  position  p |
	position := playerClient requestInterfacePosition2DWithIndex: 0 access: playerClient playerOpenMode.

	playerClient startThread.
	p := PlayerPose2d new.
	position setPositionWithPose:p  velocity: 0.1 state: 0.
	playerClient stopThread.
	playerClient close
	
