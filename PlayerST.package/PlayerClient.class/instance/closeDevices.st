as yet unclassified
closeDevices
	| currAddr |
	deviceList
		do: [:each | 
			currAddr := each deviceAddress.
			self
				requestDeviceAccessWithInterfaceCode: currAddr interf
				index: currAddr index
				access: self playerCloseMode.
			self readAll]