testing
testHeaderSizeIs40
	self assert: 
		[ (playerClient 
			headerWithType: playerClient playerMsgtypeReq
			subType: playerClient playerPlayerReqDevList
			size: 0) size = 40 ]