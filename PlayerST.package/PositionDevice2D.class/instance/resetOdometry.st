as yet unclassified
resetOdometry
	"Resets the robot's odometry to (x,y,theta) = (0,0,0)."
	| buffer |
	buffer := self 
		headerWithType: self playerMsgtypeReq
		subType: self playerPosition2dReqResetOdom
		size: 0.
	playerClient socket sendData: buffer