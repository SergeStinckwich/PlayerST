as yet unclassified
readGeom
	| buffer pose boundingBox |
	buffer := ByteArray new: 5*4.
	playerClient socket receiveDataInto: buffer.
	pp2dgeom := PlayerPosition2dGeom new.
	pose := PlayerPose2d new.
	boundingBox := PlayerBoundingBox2d new.
	pose px: (buffer 
			floatAt: 1
			bigEndian: true).
	pose py: (buffer 
			floatAt: 5
			bigEndian: true).
	pose pa: (buffer 
			floatAt: 9
			bigEndian: true).
	pp2dgeom pose: pose.
	boundingBox sl: (buffer 
			floatAt: 13
			bigEndian: true).
	boundingBox sw: (buffer 
			floatAt: 17
			bigEndian: true).
	pp2dgeom boundingBox2d:boundingBox.