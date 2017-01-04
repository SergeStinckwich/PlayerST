as yet unclassified
readDataWithPlayerMsgHeader: aHeader 
	| buffer |
	self halt.
	timeStamp := aHeader timeStamp.
	psp2ddata := PlayerSimulationData new.
	buffer := ByteArray new: 4.
	playerClient socket receiveDataInto: buffer.
	psp2ddata setData: buffer.
	readyPsp2ddata := true