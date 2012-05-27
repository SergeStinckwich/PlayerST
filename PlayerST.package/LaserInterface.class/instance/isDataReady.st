constants
isDataReady
	readyPldata
		ifTrue: [readyPldata := false.
			^ true].
	^ false