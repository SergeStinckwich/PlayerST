as yet unclassified
socket
	(socket isNil
			or: [socket isConnected not])
		ifTrue: [self initSocket].
	^ socket