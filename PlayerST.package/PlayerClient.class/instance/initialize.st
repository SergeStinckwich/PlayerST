as yet unclassified
initialize
	super initialize.
	isThreaded := false.
	dataMode := self playerDataModePush.
	readyPDDList := false.
	deviceList := Set new.
	self banner: (ByteArray new: self playerMsgHeadSize)
	
	