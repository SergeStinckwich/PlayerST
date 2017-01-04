as yet unclassified
handleResponse: aPlayerMsgHdr 
	"Handle acknowledgement response messages
	"
	aPlayerMsgHdr subType = self playerWifiMac
		ifTrue: [^ self]