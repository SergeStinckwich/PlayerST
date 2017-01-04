as yet unclassified
setOdometry: aPlayerPose 
	| header xdr |
	header := self
				headerWithType: playerClient playerMsgTypeReq
				subType: self playerPosition2dReqSetOdom
				size: 12.
	playerClient socket sendData: header.
	xdr := aPlayerPose px xdrFloat.
	xdr := xdr , aPlayerPose py xdrFloat.
	xdr := xdr , aPlayerPose pa xdrFloat.
	playerClient socket sendData: xdr