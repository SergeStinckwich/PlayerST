as yet unclassified
readDataWithPlayerMsgHeader: aHeader 
	"Read the position2d data values (state or geom)."
	aHeader subType = self playerPosition2dDataState
		ifTrue: [| buffer pos vel | 
			timeStamp := aHeader timeStamp.
			buffer := ByteArray new: aHeader size.
			pos := PlayerPose2d new.
			vel := PlayerPose2d new.
			playerClient socket receiveDataInto: buffer.
			pos
				px: (buffer doubleAt: 1 bigEndian: true).
			pos
				py: (buffer doubleAt: 9 bigEndian: true).
			pos
				pa: (buffer doubleAt: 17 bigEndian: true).
			vel
				px: (buffer doubleAt: 25 bigEndian: true).
			vel
				py: (buffer doubleAt: 33 bigEndian: true).
			vel
				pa: (buffer doubleAt: 41 bigEndian: true).
			pp2ddata := PlayerPosition2dData new.
			pp2ddata pos: pos.
			pp2ddata vel: vel.
			pp2ddata
				stall: (buffer at: 52).
			Transcript show: 'TimeStamp = ' , timeStamp asString , ' pos px = ' , pos px asString , ' pos py = ' , pos py asString , ' pos pa = ' , pos pa asString , ' vel px = ' , vel px asString , ' vel py = ' , vel py asString , ' vel pa = ' , vel pa asString , ' buffer =' , buffer printString;
				 cr.
			readyPp2ddata := true].
	aHeader subType = self playerPosition2dDataGeom
		ifTrue: [
			timeStamp := aHeader timeStamp.
			self readGeom.
			readyPp2dgeom := true.
			]