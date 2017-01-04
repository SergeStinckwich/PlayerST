as yet unclassified
queryWifiMac
	| header |
	header := self
				headerWithType: playerClient playerMsgtypeReq 
				subType: self playerWifiMac
				size: 0.
	playerClient socket sendData: header