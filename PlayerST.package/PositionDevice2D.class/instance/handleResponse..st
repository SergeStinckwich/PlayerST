constants
handleResponse: aPlayermsgHdr 
	"Handle acknowledgement response messages."
	aPlayermsgHdr subType = self playerPosition2dReqGetGeom
		ifTrue: [self readGeom.
			readyPp2dgeom := true.
			^ nil].
	aPlayermsgHdr subType = self playerPosition2dReqMotorPower
		ifTrue: [^ nil].
	aPlayermsgHdr subType = self playerPosition2dReqVelocityMode
		ifTrue: [^ nil].
	aPlayermsgHdr subType = self playerPosition2dReqPositionMode
		ifTrue: [^ nil].
	aPlayermsgHdr subType = self playerPosition2dReqSetOdom
		ifTrue: [^ nil].
	aPlayermsgHdr subType = self playerPosition2dReqResetOdom
		ifTrue: [^ nil].
	aPlayermsgHdr subType = self playerPosition2dReqSpeedPid
		ifTrue: [^ nil].
	aPlayermsgHdr subType = self playerPosition2dReqPositionPid
		ifTrue: [^ nil].
	aPlayermsgHdr subType = self playerPosition2dReqSpeedProf
		ifTrue: [^ nil].
	self error: '[Posiion2D][Debug] : Unexpected response ' , aPlayermsgHdr subType asString , ' of size =' , aPlayermsgHdr size