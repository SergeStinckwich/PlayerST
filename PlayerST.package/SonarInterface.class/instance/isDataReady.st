as yet unclassified
isDataReady
	readyPsdata
		ifTrue: [readyPsdata := false.
			^ true].
	^ false