as yet unclassified
readLaserData
	| buffer rangesCount ranges|
	pld := PlayerLaserData new.
	buffer := ByteArray new: 20.
	playerClient socket receiveDataInto: buffer.
	pld
		minAngle: (buffer doubleAt: 1 bigEndian: true).
	pld
		maxAngle: (buffer doubleAt: 9 bigEndian: true).
	pld
		resolution: (buffer doubleAt: 17 bigEndian: true).
	pld
		maxRange: (buffer doubleAt: 25 bigEndian: true).
	rangesCount := (buffer longAt: 33 bigEndian: true).
	pld rangesCount: rangesCount.
	
	buffer = ByteArray new: (self rangesCount *4 + 4).
	playerClient socket receiveDataInto: buffer.
	ranges := Array new: rangesCount.
	1
				to: rangesCount
				do: [:i | ranges
						at: i
						put: (buffer floatAt: i bigEndian: true)].
	pld ranges: ranges.
	
	
		