as yet unclassified
requestInterfaceSonarWithIndex: aNumber access: accessMode 
	^ self
		requestDeviceAccessWithInterfaceCode: PlayerSonarCode
		index: aNumber
		access: accessMode