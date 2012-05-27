as yet unclassified
readLaserData
|buffer|
	pld := PlayerLaserData new.
	buffer := ByteArray new: 20.
	playerClient socket receiveDataInto: buffer.
	pld minAngle: (buffer doubleAt: 1 bigEndian: true).
	pld maxAngle:(buffer doubleAt: 9 bigEndian:true).
	pld resolution: (buffer doubleAt: 17 bigEndian:true).
	pld maxRange: (buffer doubleAt:25 bigEndian:true).
	