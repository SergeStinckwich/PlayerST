as yet unclassified
handleRequestsDeviceWithHeader: aPlayerMsgHeader 
	"Calls the device's handleResponse method in case of a REQ/REP."
	| currAddr devAddr |
	devAddr := aPlayerMsgHeader deviceAddress.
	deviceList
		do: [:each | 
			currAddr := each deviceAddress.
			currAddr host = devAddr host & (currAddr index = devAddr index) & (currAddr robot = devAddr robot) & (currAddr interf = devAddr interf)
				ifTrue: [each handleResponse: aPlayerMsgHeader]]