as yet unclassified
requestData
	"Configuration request: Get data. When the server is in a
	PLAYER_DATAMODE_PULL data delivery mode, the client can request a
	single round of data by sending a PLAYER_PLAYER_REQ_DATA request."
	| xdr |
	xdr := self 
		headerWithType: self playerMsgtypeReq
		subType: self playerPlayerReqData
		size: 0.
	socket sendData: xdr