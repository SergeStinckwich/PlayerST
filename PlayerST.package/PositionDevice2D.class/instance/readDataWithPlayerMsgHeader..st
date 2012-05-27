as yet unclassified
readDataWithPlayerMsgHeader: aHeader 
	"Read the position2d data values (state or geom)."
	aHeader subType = self playerPosition2dDataState
		ifTrue: [| buffer pos vel | 
			timeStamp := aHeader timeStamp.
			buffer := ByteArray new: 12+12+4.
			pos := PlayerPose2d new.
			vel := PlayerPose2d new.
			playerClient socket receiveDataInto: buffer.
			pos
				px: (buffer floatAt: 1 bigEndian: true).
			pos
				py: (buffer floatAt: 5 bigEndian: true).
			pos
				pa: (buffer floatAt: 9 bigEndian: true).
			vel
				px: (buffer floatAt: 13 bigEndian: true).
			vel
				py: (buffer floatAt: 17 bigEndian: true).
			vel
				pa: (buffer floatAt: 21 bigEndian: true).
			pp2ddata := PlayerPosition2dData new.
			pp2ddata pos: pos.
			pp2ddata vel: vel.
			pp2ddata
				stall: (buffer at: 25).
		"Transcript show: 'TimeStamp = ' , timeStamp asString , ' pos px = ' , pos px asString , ' pos py = ' , pos py asString , ' pos pa = ' , pos pa asString , ' vel px = ' , vel px asString , ' vel py = ' , vel py asString , ' vel pa = ' , vel pa asString , ' buffer =' , buffer printString;
				 cr."
			readyPp2ddata := true].
	aHeader subType = self playerPosition2dDataGeom
		ifTrue: [
			timeStamp := aHeader timeStamp.
			self readGeom.
			readyPp2dgeom := true.
			]