as yet unclassified
readGeom
	"Buffer for reading pose and size"
	| buffer |
	buffer := ByteArray new: 12 + 8.
	playerClient socket receiveDataInto: buffer