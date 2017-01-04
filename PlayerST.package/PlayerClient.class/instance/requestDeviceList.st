as yet unclassified
requestDeviceList
	"Request/reply: Get the list of available devices.
	It's useful for applications such as viewer programs and test suites
	that tailor behave differently depending on which devices are
	available. To request the list, send a null PLAYER_PLAYER_REQ_DEVLIST
	"
	| deviceCount arrayCount xdr size header |
	deviceCount := 0 xdrInteger.
	arrayCount := 0 xdrInteger.
	xdr := deviceCount , arrayCount.
	size := xdr size.
	header := self 
		headerWithType: self playerMsgtypeReq
		subType: self playerPlayerReqDevList
		size: size.
	socket sendData: header , xdr