as yet unclassified
requestInterfaceWifiWithIndex: aNumber access: accessMode 
	^ self
		requestDeviceAccessWithInterfaceCode: PlayerWifiCode
		index: aNumber
		access: accessMode