as yet unclassified
startDemo5
	"player stage-2.1.1/worlds/simple.cfg"
	| sonar s position turnRate speed |
	position := playerClient requestInterfacePosition2DWithIndex: 0 access: playerClient playerOpenMode.
	sonar := playerClient requestInterfaceSonarWithIndex: 0 access: playerClient playerOpenMode.
	playerClient startThread.
	100
		timesRepeat: [[sonar isDataReady] whileFalse.
			s := sonar getData.
			(s ranges at: 1)
					+ (s ranges at: 2) < ((s ranges at: 6)
						+ (s ranges at: 7))
				ifTrue: [turnRate := -20 degreesToRadians]
				ifFalse: [turnRate := 20 degreesToRadians].
			(s ranges at: 3)
					< 0.5
				ifTrue: [speed := 0.0]
				ifFalse: [speed := 1.0].
			position speed: speed withTurnRate: turnRate.
			self halt.
		].
		playerClient stopThread.
	playerClient close