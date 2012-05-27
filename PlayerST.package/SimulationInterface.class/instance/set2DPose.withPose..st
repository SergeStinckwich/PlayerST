as yet unclassified
set2DPose: anIdentifier withPose: aPlayerPose 
	| leftOvers size header xdr |
	leftOvers := 4 - (anIdentifier size \\ 4).
	size := 8 + 12 + anIdentifier size + leftOvers.
	header := self
				headerWithType: playerClient playerMsgtypeReq
				subType: self playerSimulationReqSetPose2d
				size: size.
	xdr := (anIdentifier size + 1) xdrInteger , (anIdentifier size + 1) xdrInteger.
	playerClient socket sendData: header , xdr.
	xdr := aPlayerPose px xdrFloat , aPlayerPose py xdrFloat , aPlayerPose pa xdrFloat.
	playerClient socket sendData: xdr