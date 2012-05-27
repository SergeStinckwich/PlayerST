as yet unclassified
get2DPose: anIdentifier 
	| size leftOvers header xdr buffer |
	leftOvers := 4 - (anIdentifier size \\ 4).
	size := 8 + anIdentifier size + leftOvers + 12.
	header := self
				headerWithType: playerClient playerMsgtypeReq
				subType: self playerSimulationReqGetPose2d
				size: size.
	buffer := ByteArray new: leftOvers.
	xdr := (anIdentifier size) xdrInteger , anIdentifier asByteArray , buffer
				, (ByteArray new: 12).
	playerClient socket sendData: header , xdr.
	self halt