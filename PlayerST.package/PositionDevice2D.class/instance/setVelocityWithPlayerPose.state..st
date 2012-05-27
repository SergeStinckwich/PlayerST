as yet unclassified
setVelocityWithPlayerPose: vel state: aState 
	| header xdr |
	header := self
				headerWithType: playerClient playerMsgtypeCmd
				subType: self playerPosition2dCmdVel
				size: (3*8) + 4.
	playerClient socket sendData: header.
	xdr := vel px xdrDouble.
	xdr := xdr , vel py xdrDouble.
	xdr := xdr , vel pa xdrDouble.
	xdr := xdr , aState xdrByte.
	playerClient socket sendData: xdr