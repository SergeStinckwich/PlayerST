as yet unclassified
setPositionWithPose: pos velocity: vel state: aState 
	| header xdr |
	header := self 
		headerWithType: playerClient playerMsgtypeCmd
		subType: self playerPosition2dCmdPos
		size: (6*8) + 4.
	xdr := pos px xdrDouble.
	xdr := xdr , pos py xdrDouble.
	xdr := xdr , pos pa xdrDouble.
	xdr := xdr , vel px xdrDouble.
	xdr := xdr , vel py xdrDouble.
	xdr := xdr , vel pa xdrDouble.
	xdr := xdr , aState xdrByte.
	playerClient socket sendData: header , xdr