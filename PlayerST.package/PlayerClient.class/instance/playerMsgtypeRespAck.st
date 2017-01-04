constants - player message types
playerMsgtypeRespAck
	"A positive response message. Such messages are published in response to
	a PLAYER_MSGTYPE_REQ. This message indicates that the underlying
	driver received, interpreted, and processed the request. Any requested
	data is in the body of this response message"
	^ 4