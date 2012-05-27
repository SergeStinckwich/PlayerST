as yet unclassified
closeSocket

	socket
		ifNotNil: [socket closeAndDestroy].
	self flag: 'warning : other error on client 0 error is generated each time the socket is closed. I dunno why right now. --Serge'