as yet unclassified
readAll
	"Read the Player server replies in non-threaded mode."
	| msgType |
	msgType := 0.
	isThreaded
		ifTrue: [^ msgType].
	dataMode = self playerDataModePull
		ifTrue: [self requestData.
			[msgType ~= self playerMsgTypeSynch]
				whileTrue: [msgType := self readInterface: 0 index: 0].
			^ self playerMsgTypeSynch].
	msgType := self readInterface: 0 index: 0.
	^ msgType