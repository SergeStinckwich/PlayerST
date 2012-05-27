as yet unclassified
get2DPose: anIdentifier 
	| size leftOvers header xdr buffer |
	leftOvers := 4 - (anIdentifier size \\ 4).
	size := 8 + 12 + anIdentifier size + leftOvers.
	header := self
				headerWithType: playerClient playerMsgtypeReq
				subType: self playerSimulationReqGetPose2d
				size: size.
				playerClient socket sendData: header.
	xdr := (anIdentifier size + 1) xdrInteger , (anIdentifier size + 1) xdrInteger.
	playerClient socket sendData: xdr.
	playerClient socket sendData: anIdentifier asByteArray.
	buffer := ByteArray new: leftOvers.
	playerClient socket sendData: buffer.
	playerClient socket
		sendData: (ByteArray new: 12).
	self halt