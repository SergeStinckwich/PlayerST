as yet unclassified
startDemo3
	"player simple.cfg"

	| sonar s |
	sonar := playerClient requestInterfaceSonarWithIndex: 0 access: playerClient playerOpenMode.
	playerClient startThread.
	[ sonar isDataReady ] whileFalse.
	s := sonar getData.
	Transcript
		show: 'Ranges count =' , s rangesCount asString , ' Ranges : ' , s ranges printString;
		cr.
	playerClient stopThread.
	playerClient close