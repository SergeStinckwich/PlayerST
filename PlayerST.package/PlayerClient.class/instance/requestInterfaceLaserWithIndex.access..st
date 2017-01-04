as yet unclassified
requestInterfaceLaserWithIndex: aNumber access: accessMode 
	^ self
		requestDeviceAccessWithInterfaceCode: PlayerLaserCode 
		index: aNumber
		access: accessMode