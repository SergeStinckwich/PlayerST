constants
isGeomReady
	readyPp2dgeom
		ifTrue: [readyPp2dgeom := false.
			^ true].
	^ false