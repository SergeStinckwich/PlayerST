as yet unclassified
get2DPose: anIdentifier 
	| size leftOvers header xdr buffer |
	leftOvers := 4 - (anIdentifier size \\ 4).
	size := 8 + 12 + anIdentifier size + leftOvers.
	header := self
				headerWithType: playerClient playerMsgtypeReq
				subType: self playerSimulationReqGetPose2d
				size: size.
	xdr := (anIdentifier size + 1) xdrInteger , (anIdentifier size + 1) xdrInteger.
	playerClient socket sendData: header , xdr.
	playerClient socket sendData: anIdentifier.
	buffer := ByteArray new: leftOvers.
	playerClient socket sendData: buffer.
	playerClient socket
		sendData: (ByteArray new: 12).
		self halt.