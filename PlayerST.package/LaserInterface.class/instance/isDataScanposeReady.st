constants
isDataScanposeReady
	readyPldatascan 
		ifTrue: [readyPldatascan  := false.
			^ true].
	^ false