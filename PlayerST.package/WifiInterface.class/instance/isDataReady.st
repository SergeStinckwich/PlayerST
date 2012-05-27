testing
isDataReady
	readyPwdata  
		ifTrue: [readyPwdata  := false.
			^ true].
	^ false