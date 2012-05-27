as yet unclassified
requestInterfacePosition2DWithIndex: aNumber access: accessMode 
	^self
		requestDeviceAccessWithInterfaceCode: PlayerPosition2dCode
		index: aNumber
		access: accessMode