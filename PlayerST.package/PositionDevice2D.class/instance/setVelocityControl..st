as yet unclassified
setVelocityControl: mode 
	| buffer |
	buffer := self 
		headerWithType: self playerMsgtypeReq
		subType: self playerPosition2dReqVelocityMode
		size: 4.
	playerClient socket sendData: buffer.
	buffer := mode xdrByte.
	playerClient socket sendData: buffer