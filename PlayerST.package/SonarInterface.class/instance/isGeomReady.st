constants
isGeomReady
	readyPsgeom
		ifTrue: [readyPsgeom := false.
			^ true].
	^ false