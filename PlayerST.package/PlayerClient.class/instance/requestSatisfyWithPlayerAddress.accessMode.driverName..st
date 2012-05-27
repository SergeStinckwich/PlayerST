as yet unclassified
requestSatisfyWithPlayerAddress: aPlayerDevAddr accessMode: mode driverName: aString 
	| newDevice |
	mode == self playerCloseMode
		ifTrue: [^ nil].
	aPlayerDevAddr interf == PlayerPosition2dCode
		ifTrue: [newDevice := PositionDevice2D new].
	aPlayerDevAddr interf == PlayerSonarCode
		ifTrue: [newDevice := SonarInterface new].
		aPlayerDevAddr interf == PlayerLaserCode
		ifTrue: [newDevice := LaserInterface new].
	aPlayerDevAddr interf == PlayerWifiCode
		ifTrue: [newDevice := WifiInterface new].
	newDevice
		ifNotNil: [newDevice deviceAddress: aPlayerDevAddr.
			newDevice deviceAccess: mode.
			newDevice deviceDriverName: aString.
			newDevice playerClient: self.
			deviceList add: newDevice].
	^ newDevice