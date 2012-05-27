as yet unclassified
startDemo8
	"player stage-2.1.1/worlds/simple.cfg"
	|  position   |
	position := playerClient requestInterfacePosition2DWithIndex: 0 access: playerClient playerOpenMode.
	playerClient startThread.
	position queryGeometry.
	[position isGeomReady] whileFalse.
	position getGeom.
	playerClient stopThread.
	playerClient close