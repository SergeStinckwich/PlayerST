process management
startThread
	| resultCode |
	isRunning := true.
	isThreaded := true.
	[[isThreaded]
		whileTrue: [dataMode = self playerDataModePull
				ifTrue: [self requestData.
					resultCode := self read.
					[resultCode ~= self playerMsgtypeSync & isThreaded] whileTrue]
				ifFalse: [self read]].
			isRunning := false.
			] fork