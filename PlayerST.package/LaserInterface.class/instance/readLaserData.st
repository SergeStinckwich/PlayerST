as yet unclassified
readLaserData
	| buffer rangesCount ranges intensityCount currentAngle resolution points |
	pld := PlayerLaserData new.
	buffer := ByteArray new: 4*4+4.
	playerClient socket receiveDataInto: buffer.
	pld
		minAngle: (buffer floatAt: 1 bigEndian: true).
	pld
		maxAngle: (buffer floatAt: 5 bigEndian: true).
	pld
		resolution: (buffer floatAt: 9 bigEndian: true).
	pld
		maxRange: (buffer floatAt: 13 bigEndian: true).
	rangesCount := (buffer longAt: 17 bigEndian: true).
	pld rangesCount: rangesCount.
	
	buffer := ByteArray new: (rangesCount * 4)+4.
	playerClient socket receiveDataInto: buffer.
	ranges := Array new: rangesCount.
	1
				to: rangesCount
				do: [:i | ranges
						at: i
						put: (buffer floatAt: i*4-3 bigEndian: true)].
	pld ranges: ranges.
	
	buffer := ByteArray new: 8.
	playerClient socket receiveDataInto: buffer.
	intensityCount := buffer longAt: 1 bigEndian: true.
	pld intensityCount: intensityCount.
	buffer := ByteArray new: intensityCount.
	playerClient socket receiveDataInto: buffer.
	pld intensity:buffer.
	
	(intensityCount \\ 4) ~= 0 ifTrue:[buffer := ByteArray new:4-(intensityCount \\ 4). playerClient socket receiveDataInto:buffer ].
	buffer := ByteArray new: 8.
	playerClient socket receiveDataInto: buffer.
	pld id: (buffer longAt:1 bigEndian: true).
	
	currentAngle := pld minAngle.
	resolution := pld resolution.
	ranges := pld ranges.
		
	points := Array new: pld rangesCount.
	1 to: (pld rangesCount) do:[:i|
	points at: i put:(((ranges at: i)* (currentAngle cos))@
		((ranges at: i)* (currentAngle sin))).
		currentAngle := currentAngle+resolution.
		].
	pld points: points.
	^pld
	
	
		