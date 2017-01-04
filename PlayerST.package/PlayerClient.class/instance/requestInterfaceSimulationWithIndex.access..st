as yet unclassified
requestInterfaceSimulationWithIndex: aNumber access: accessMode 
	^ self
		requestDeviceAccessWithInterfaceCode: PlayerSimulationCode
		index: aNumber
		access: accessMode