as yet unclassified
startDemo2
	"player simple.cfg"

	| position2D pp2d p |
	position2D := playerClient requestInterfacePosition2DWithIndex: 0 access: playerClient playerOpenMode.
	playerClient startThread.
	p := PlayerPose2d new.
	p
		px: 0.0;
		py: 0.0;
		pa: 40.0 degreesToRadians.
	position2D setVelocityWithPlayerPose: p state: 1.
	position2D queryGeometry.
	[ position2D isDataReady ] whileFalse.
	pp2d := position2D getData.
	Transcript
		show:
				'State : x=' , pp2d pos px asString , ' y =' , pp2d pos py asString , ' a = ' , pp2d pos pa asString , ' stall = '
						, pp2d stall asString;
		cr.
	playerClient stopThread.
	playerClient close