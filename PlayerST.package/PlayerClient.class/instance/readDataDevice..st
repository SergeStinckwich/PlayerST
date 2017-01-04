as yet unclassified
readDataDevice: aPlayerMsgHeader 
	"Calls the device's readDataWithPlayerMsgHeader: method."
	| devAddr currAddr |
	devAddr := aPlayerMsgHeader deviceAddress.
	deviceList
		do: [:each | 
			currAddr := each deviceAddress.
			currAddr host = devAddr host & (currAddr index = devAddr index) & (currAddr robot = devAddr robot) & (currAddr interf = devAddr interf)
				ifTrue: [each readDataWithPlayerMsgHeader: aPlayerMsgHeader]]