constants
isDataReady
	readyPsdata
		ifTrue: [readyPsdata := false.
			^ true].
	^ false