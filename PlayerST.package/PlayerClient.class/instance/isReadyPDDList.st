as yet unclassified
isReadyPDDList
	"Check to see if the Player server replied with a
	PLAYER_PLAYER_REQ_DEVLIST successfully. Return true if the
	PLAYER_PLAYER_REQ_DEVLIST occured, false otherwise"
	readyPDDList
		ifTrue: [readyPDDList := false.
			^ true].
	^ false