as yet unclassified
setControlMode: aState 
	| buffer |
	buffer := self 
		headerWithType: self playerMsgtypeReq
		subType: self playerPosition2dReqPositionMode
		size: 4.
	playerClient socket sendData: buffer.
	playerClient socket sendData: aState xdrInteger