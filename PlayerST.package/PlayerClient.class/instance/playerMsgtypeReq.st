constants - player message types
playerMsgtypeReq
	"A request message. Such messages are published synchronously to
	devices, usually to get or set some aspect of the device's state that is
	not available in data or command messages. Every request message gets
	a response message (either PLAYER_MSGTYPE_RESP_ACK or
	PLAYER_MSGTYPE_RESP_NACK)"
	^ 3