as yet unclassified
readGeom
	| buffer pose boundingBox |
	buffer := ByteArray new: 5*8.
	playerClient socket receiveDataInto: buffer.
	pp2dgeom := PlayerPosition2dGeom new.
	pose := PlayerPose2d new.
	boundingBox := PlayerBoundingBox2d new.
	pose px: (buffer 
			doubleAt: 1
			bigEndian: true).
	pose py: (buffer 
			doubleAt: 9
			bigEndian: true).
	pose pa: (buffer 
			doubleAt: 17
			bigEndian: true).
	pp2dgeom pose: pose.
	boundingBox sl: (buffer 
			doubleAt: 25
			bigEndian: true).
	boundingBox sw: (buffer 
			doubleAt: 33
			bigEndian: true).
	pp2dgeom boundingBox2d:boundingBox.