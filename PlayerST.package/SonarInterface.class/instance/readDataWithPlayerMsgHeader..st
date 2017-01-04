as yet unclassified
readDataWithPlayerMsgHeader: aHeader 
	"Read the sonar values."
	| buffer rangesCount ranges |
	aHeader subType = self playerSonarDataRanges
		ifTrue: [timeStamp := aHeader timeStamp.
			buffer := ByteArray new: aHeader size.
			playerClient socket receiveDataInto: buffer.
			rangesCount := buffer longAt: 1 bigEndian: true.
			ranges := Array new: rangesCount.
			2
				to: rangesCount + 1
				do: [:i | ranges
						at: i - 1
						put: (buffer floatAt: i - 1 * 4 + 1 + 4 bigEndian: true)].
			psdata := PlayerSonarData new.
			psdata ranges: ranges.
			readyPsdata := true]