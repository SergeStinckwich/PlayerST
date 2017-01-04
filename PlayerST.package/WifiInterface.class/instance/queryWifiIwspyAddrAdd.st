as yet unclassified
queryWifiIwspyAddrAdd
	| header |
	header := self
				headerWithType: playerClient playerMsgtypeReq
				subType: self playerWifiIwspyAdd
				size: 32 * 4.
	playerClient socket sendData: header