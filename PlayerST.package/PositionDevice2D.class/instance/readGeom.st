as yet unclassified
readGeom
	| buffer pose boundingBox |
	buffer := ByteArray new: 12 + 8.
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
	boundingBox width: (buffer 
			floatAt: 13
			bigEndian: true).
	boundingBox with: (buffer 
			floatAt: 17
			bigEndian: true).
	pp2dgeom boundingBox: boundingBox