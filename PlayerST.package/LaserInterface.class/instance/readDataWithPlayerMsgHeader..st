as yet unclassified
readDataWithPlayerMsgHeader: aHeader 
	
	aHeader subType = self playerLaserDataScan
		ifTrue: [timeStamp := aHeader timeStamp.
			pldata := self readLaserData.
			readyPldata := true].
	aHeader subType = self playerLaserDataScanpose
		ifTrue: [| pld pp buffer | timeStamp := aHeader timeStamp.
			pld := self readLaserData.
			pp := PlayerPose2d new.
			buffer := ByteArray new: 12.
			playerClient socket receiveDataInto: buffer.
			pp
				px: (buffer floatAt: 1 bigEndian: true).
			pp
				py: (buffer floatAt: 5 bigEndian: true).
			pp
				pa: (buffer floatAt: 9 bigEndian: true).
			pldatascan := PlayerLaserDataScanPose new.
			pldatascan scan: pld.
			pldatascan pose: pp.
			readyPldatascan := true]