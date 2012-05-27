as yet unclassified
readDataWithPlayerMsgHeader: aHeader 
	aHeader subType = self playerLaserDataScan
		ifTrue: [timeStamp := aHeader timeStamp.
			pldata := self readLaserData.
			readyPlData := true]