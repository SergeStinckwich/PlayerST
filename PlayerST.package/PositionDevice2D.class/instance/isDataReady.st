constants
isDataReady
	readyPp2ddata
		ifTrue: [readyPp2ddata := false.
			^ true].
	^ false